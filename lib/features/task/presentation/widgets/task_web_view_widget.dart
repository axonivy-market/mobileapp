import 'dart:convert';
import 'dart:io';

import 'package:axon_ivy/core/app/app_config.dart';
import 'package:axon_ivy/core/app/app_constants.dart';
import 'package:axon_ivy/features/task/domain/entities/task/task.dart';
import 'package:axon_ivy/features/task/presentation/bloc/task_activity_bloc/task_activity_bloc.dart';
import 'package:axon_ivy/shared/storage/shared_preference.dart';
import 'package:axon_ivy/shared/utils/authorization_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:go_router/go_router.dart';
import 'package:axon_ivy/shared/extensions/extensions.dart';

class TaskWebViewWidget extends StatefulWidget {
  const TaskWebViewWidget({
    super.key,
    required this.fullRequestPath,
    this.taskIvy,
    required this.onScrollToTop,
    required this.canScrollVertical,
    required this.onProgressChanged,
  });

  final String fullRequestPath;
  final TaskIvy? taskIvy;
  final ValueChanged<bool> onScrollToTop;
  final ValueChanged<bool> canScrollVertical;
  final ValueChanged<double> onProgressChanged;

  @override
  State<TaskWebViewWidget> createState() => _TaskWebViewWidgetState();
}

class _TaskWebViewWidgetState extends State<TaskWebViewWidget> {
  bool isFinishedTask = false;
  int _previousScrollY = 0;
  int overScrollY = 0;
  bool isOverScrolled = true;
  Map<String, dynamic> cookies = {};

  InAppWebViewSettings settings = InAppWebViewSettings(
    supportZoom: false,
    verticalScrollBarEnabled: false,
    useShouldInterceptAjaxRequest: true,
    iframeAllowFullscreen: true,
    transparentBackground: true,
    useShouldOverrideUrlLoading: true,
    useShouldInterceptRequest: true,
    cacheEnabled: true,
  );

  @override
  void initState() {
    super.initState();
    final isDarkMode = SharedPrefs.themeSetting ?? false;
    final themeValue = isDarkMode ? 'dark' : 'light';

    _setCookies(themeValue);
  }

  Future<void> _setCookies(String value) async {
    if (widget.fullRequestPath.isNotEmpty) {
      final cookieManager = CookieManager.instance();
      await cookieManager.setCookie(
        url: WebUri.uri(Uri.parse(widget.fullRequestPath)),
        name: 'primefaces-theme-mode',
        value: value,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    int taskId = -1;
    return InAppWebView(
      onAjaxReadyStateChange: (controller, ajx) async {
        String finishedTask =
            ajx.responseHeaders?[Constants.ivyFinishedTask] ?? "";
        String currentRunningTask =
            ajx.responseHeaders?[Constants.ivyCurrentRunningTask] ?? "";
        isFinishedTask = finishedTask.isNotEmpty && currentRunningTask.isEmpty;
        taskId = int.parse(finishedTask);
        return null;
      },
      initialSettings: settings,
      initialUrlRequest: widget.taskIvy?.offline != true
          ? URLRequest(
              url: WebUri(widget.fullRequestPath),
              headers: {
                HttpHeaders.authorizationHeader:
                    AuthorizationUtils.authorizationHeader,
                HttpHeaders.cacheControlHeader: 'no-cache',
              },
              httpShouldHandleCookies: true)
          : null,
      initialData: widget.taskIvy?.offline == true &&
              widget.taskIvy?.formHTMLPageOffline.isEmptyOrNull == false
          ? InAppWebViewInitialData(
              data: widget.taskIvy!.formHTMLPageOffline!,
              baseUrl: WebUri(AppConfig.serverUrl))
          : null,
      shouldOverrideUrlLoading: (controller, navigationAction) async {
        if (isFinishedTask) {
          // Finish task normal
          context.pop({taskId: ''});
          return NavigationActionPolicy.CANCEL;
        }
        // Handle finish task offline for iOS
        _iOSFinishTaskOffline(controller, navigationAction);
        return NavigationActionPolicy.ALLOW;
      },
      shouldInterceptRequest: (controller, request) async {
        // Handle finish task offline for Android
        await _androidFinishTaskOffline(context, controller, request);
        return null;
      },
      onScrollChanged: (controller, x, y) {
        final scrollDelta = y - _previousScrollY;
        if (scrollDelta > 0 && !isOverScrolled) {
          widget.onScrollToTop(false);
        } else if (scrollDelta < 0 && !isOverScrolled) {
          if (y <= 0) {
            widget.onScrollToTop(true);
          }
        }
        if (isOverScrolled && overScrollY != y) {
          isOverScrolled = false;
        }
        _previousScrollY = y;
      },
      onOverScrolled: (controller, x, y, a, b) {
        isOverScrolled = true;
        overScrollY = y;
      },
      onLoadStop: (controller, url) async {
        await Future.delayed(const Duration(milliseconds: 500));
        if (context.mounted) {
          final canScroll = await controller.canScrollVertically();
          widget.canScrollVertical(canScroll);
        }
      },
      onProgressChanged: (controller, newProgress) {
        if (context.mounted) {
          widget.onProgressChanged(newProgress / 100);
        }
      },
    );
  }

  Future _androidFinishTaskOffline(BuildContext context,
      InAppWebViewController controller, WebResourceRequest request) async {
    if (!context.mounted) {
      return;
    }
    await controller.evaluateJavascript(source: """
        var buttons = document.querySelectorAll('button');
        buttons.forEach(button => {
          button.addEventListener('click', function() {
              var buttonID = this.id;
              window.flutter_inappwebview.callHandler('buttonCLick', this.id); 
          });
        });
        """);
    await controller.evaluateJavascript(source: """
              var form = document.getElementById("form");
              var formData = new FormData(form);
              var object ={};
              formData.forEach(function(value, key){
                object[key]=value;
              });
              window.flutter_inappwebview.callHandler('formData', JSON.stringify(object)); 
        """);
    var formData = "";
    var buttonId = '';
    controller.addJavaScriptHandler(
        handlerName: 'buttonCLick',
        callback: (args) {
          buttonId = args[0];
        });
    controller.addJavaScriptHandler(
        handlerName: 'formData',
        callback: (args) {
          formData = args[0];
          if (widget.taskIvy?.offline == true && buttonId.isNotEmpty) {
            Map<String, dynamic> resultMap = json.decode(formData);
            resultMap[buttonId] = '';
            var task = widget.taskIvy!
                .copyWith(doneTaskFormDataSerializedOffline: resultMap);
            context
                .read<TaskActivityBloc>()
                .add(TaskActivityEvent.finishTaskOffline(task));
          }
        });
    if (widget.taskIvy?.offline == true &&
        request.url.toString() ==
            "${AppConfig.serverUrl}${widget.taskIvy?.submitUrlOffline}") {
      // Prevent navigate URL to call finish task offline request
      await Future.delayed(const Duration(seconds: 30));
      if (context.mounted) {
        context.pop();
      }
    }
  }

  NavigationActionPolicy? _iOSFinishTaskOffline(
      InAppWebViewController controller, NavigationAction navigationAction) {
    Uri uri = Uri.parse(navigationAction.request.url!.toString());
    var path = navigationAction.request.url!.toString().split(uri.host)[1];
    if (widget.taskIvy?.offline == true &&
        path == widget.taskIvy?.submitUrlOffline) {
      if (context.mounted && navigationAction.request.body != null) {
        var formValues = utf8.decode(navigationAction.request.body!.toList());
        Map<String, String> resultMap = {};
        List<String> pairs = formValues.split('&');
        for (String pair in pairs) {
          List<String> keyValuePair = pair.split('=');
          String key = Uri.decodeComponent(keyValuePair[0]);
          String value = Uri.decodeComponent(keyValuePair[1]);
          resultMap[key] = value;
        }
        var task = widget.taskIvy!
            .copyWith(doneTaskFormDataSerializedOffline: resultMap);
        context
            .read<TaskActivityBloc>()
            .add(TaskActivityEvent.finishTaskOffline(task));
      }
      return NavigationActionPolicy.CANCEL;
    }
    return null;
  }
}

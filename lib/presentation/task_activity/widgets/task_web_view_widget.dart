import 'dart:convert';

import 'package:axon_ivy/core/app/app_constants.dart';
import 'package:axon_ivy/core/utils/shared_preference.dart';
import 'package:axon_ivy/data/models/task/task.dart';
import 'package:axon_ivy/presentation/task/bloc/task_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:go_router/go_router.dart';

class TaskWebViewWidget extends StatefulWidget {
  const TaskWebViewWidget({
    super.key,
    required this.fullRequestPath,
    required this.taskIvy,
    required this.onScrollToTop,
    required this.canScrollVertical,
    required this.onProgressChanged,
    required this.endTaskOffline,
  });

  final String fullRequestPath;
  final ValueChanged<bool> onScrollToTop;
  final ValueChanged<bool> canScrollVertical;
  final ValueChanged<double> onProgressChanged;
  final ValueChanged<bool> endTaskOffline;
  final TaskIvy? taskIvy;

  @override
  State<TaskWebViewWidget> createState() => _TaskWebViewWidgetState();
}

class _TaskWebViewWidgetState extends State<TaskWebViewWidget> {
  bool isFinishedTask = false;
  int _previousScrollY = 0;
  int overScrollY = 0;
  bool isOverScrolled = true;
  String basicAuth = '';

  InAppWebViewSettings settings = InAppWebViewSettings(
    supportZoom: false,
    verticalScrollBarEnabled: false,
    useShouldInterceptAjaxRequest: true,
    iframeAllowFullscreen: true,
    useShouldInterceptRequest: true,
    useShouldInterceptFetchRequest: true,
  );

  @override
  void initState() {
    super.initState();
    final username = SharedPrefs.getUsername;
    final password = SharedPrefs.getPassword;
    basicAuth = 'Basic ${base64Encode(utf8.encode('$username:$password'))}';
  }

  @override
  Widget build(BuildContext context) {
    return InAppWebView(
      onAjaxReadyStateChange: (controller, ajx) async {
        print(
            "onAjaxReadyStateChange ${ajx.headers}  ==== ${ajx.responseHeaders} ===== ${ajx.response}");
        String finishedTask =
            ajx.responseHeaders?[Constants.ivyFinishedTask] ?? "";
        String currentRunningTask =
            ajx.responseHeaders?[Constants.ivyCurrentRunningTask] ?? "";
        isFinishedTask = finishedTask.isNotEmpty && currentRunningTask.isEmpty;
        return null;
      },
      initialSettings: settings,
      // initialUrlRequest: URLRequest(
      //   url: WebUri(widget.taskIvy!.fullRequestPath),
      //   headers: {'Authorization': basicAuth},
      // ),
      initialData: InAppWebViewInitialData(
          data: widget.taskIvy!.formHTMLPage,
          baseUrl: WebUri("https://mobile-demo-server.ivy-cloud.com/")),
      shouldOverrideUrlLoading: (controller, navigationAction) async {
        print("----shouldOverrideUrlLoading ${navigationAction.request}");
        if (isFinishedTask) {
          context.pop(true);
          return NavigationActionPolicy.CANCEL;
        }
        return NavigationActionPolicy.ALLOW;
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
      onLoadStart: (controller, uri) {
        print("==onLoadStart===${uri?.path}");
      },
      onUpdateVisitedHistory: (c, w, b) {},
      onLoadStop: (controller, url) async {
        print("===onLoadStop==");
        await Future.delayed(const Duration(milliseconds: 500));
        final canScroll = await controller.canScrollVertically();
        widget.canScrollVertical(canScroll);
      },
      onReceivedError: (controller, req, res) async {
        if (res.type == WebResourceErrorType.NOT_CONNECTED_TO_INTERNET ||
            res.type == WebResourceErrorType.HOST_LOOKUP) {
          var formValues = await controller.evaluateJavascript(source: """
            var inputs = document.querySelectorAll('input');
            var values = {};
            inputs.forEach(function(input) {
              if (input.type !== 'submit') {
                values[input.name] = input.value;
              }
            });
            JSON.stringify(values);
          """);
          print("Form Values: $formValues");

          final task = widget.taskIvy!.copyWith(
              taskDone: true,
              doneTaskFormDataSerialized:
                  '{"form:proceed":,"form_SUBMIT":"1","javax.faces.ViewState":"jkYbGyJRVstY8tSzEUpCmUVrwe/wW9U6R1oEuDC4C/jPqo2I66wnWBI30iH6ieO4q1qO4bTo2i4dy7Qw31Hv327ATzpJDWLgY9nMvRYuVt/p2fGu3FF3Yw7/MT4t8aplWqGRF63+/SEGeby/lEcoye7LVU375REJa8+ZWuPGLcbnlYB8a1p8M0po5t80XMxQ3uoOjwiSHv+XuH/Vh9s6+L/mpFRJdjznqoWgh6xZafjq3EmhewjrJ37t1CJ0JD21"}');
          final tasks = TaskBloc.tasks.map((obj) {
            if (widget.taskIvy?.id == obj.id) {
              return task;
            } else {
              return obj;
            }
          }).toList();
          TaskBloc.tasks = tasks;

          print("----------${req.toString()}");
          print("----------${res.toString()}");
          // widget.endTaskOffline(true);
          /*final task = context
              .read<TaskBloc>()
              .tasks
              .firstWhere((element) => element.id == widget.taskIvy?.id)
              .copyWith(taskDone: true);
          print("=== ${task.toString()}");
          context.read<TaskBloc>().tasks.map((obj) {
            if (widget.taskIvy?.id == obj.id) {
              return task;
            } else {
              return obj;
            }
          }).toList();*/
        }
      },
      onReceivedHttpAuthRequest: (co, re) async {
        print("onReceivedHttpAuthRequest ${re.toString()}");
      },
      shouldInterceptRequest: (c, r) async {},
      onProgressChanged: (controller, newProgress) {
        widget.onProgressChanged(newProgress / 100);
      },
    );
  }
}

import 'package:axon_ivy/core/app/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:go_router/go_router.dart';

class TaskWebViewWidget extends StatefulWidget {
  const TaskWebViewWidget({
    super.key,
    required this.fullRequestPath,
    required this.onScrollToTop,
    required this.canScrollVertical,
    required this.onProgressChanged,
  });

  final String fullRequestPath;
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

  InAppWebViewSettings settings = InAppWebViewSettings(
    supportZoom: false,
    verticalScrollBarEnabled: false,
    useShouldInterceptAjaxRequest: true,
  );

  @override
  Widget build(BuildContext context) {
    return InAppWebView(
      onAjaxReadyStateChange: (controller, ajx) async {
        String finishedTask =
            ajx.responseHeaders?[Constants.iVYFinishedTask] ?? "";
        String currentRunningTask =
            ajx.responseHeaders?[Constants.iVYCurrentRunningTask] ?? "";
        isFinishedTask = finishedTask.isNotEmpty && currentRunningTask.isEmpty;
        return null;
      },
      initialSettings: settings,
      initialUrlRequest: URLRequest(
        url: WebUri(widget.fullRequestPath),
      ),
      shouldOverrideUrlLoading: (controller, navigationAction) async {
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
      onLoadStop: (controller, url) async {
        await Future.delayed(const Duration(milliseconds: 500));
        final canScroll = await controller.canScrollVertically();
        widget.canScrollVertical(canScroll);
      },
      onProgressChanged: (controller, newProgress) {
        setState(() {
          widget.onProgressChanged(newProgress / 100);
        });
      },
    );
  }
}

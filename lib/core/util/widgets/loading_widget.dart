import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: CupertinoActivityIndicator(radius: 15.r));
  }
}

class LoadingOverlay {
  OverlayEntry? _overlay;

  LoadingOverlay() {
    _overlay = null;
  }

  void show(BuildContext context) {
    _overlay = OverlayEntry(
      builder: (context) => ColoredBox(
        color: const Color(0x80000000),
        child: Center(
          child: CupertinoActivityIndicator(radius: 15.r),
        ),
      ),
    );
  }

  void hide() {
    _overlay?.remove();
    _overlay = null;
  }
}

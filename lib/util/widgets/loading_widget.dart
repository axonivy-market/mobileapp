import 'package:flutter/cupertino.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: CupertinoActivityIndicator(radius: 15));
  }
}

class LoadingOverlay {
  OverlayEntry? _overlay;

  LoadingOverlay() {
    _overlay = null;
  }

  void show(BuildContext context) {
    _overlay = OverlayEntry(
      builder: (context) => const ColoredBox(
        color: Color(0x80000000),
        child: Center(
          child: CupertinoActivityIndicator(radius: 15),
        ),
      ),
    );
  }

  void hide() {
    _overlay?.remove();
    _overlay = null;
  }
}

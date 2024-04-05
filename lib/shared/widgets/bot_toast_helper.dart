import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Function() showAppLoading({
  WrapAnimation? wrapToastAnimation,
  BackButtonBehavior? backButtonBehavior,
  VoidCallback? onClose,
  Duration? duration,
  Duration? animationDuration,
  Duration? animationReverseDuration,
}) {
  return BotToast.showCustomLoading(
    wrapAnimation:
        (AnimationController controller, CancelFunc cancelFunc, Widget child) =>
            FadeAnimation(controller: controller, child: child),
    wrapToastAnimation: wrapToastAnimation,
    align: Alignment.center,
    enableKeyboardSafeArea: true,
    backButtonBehavior: backButtonBehavior,
    toastBuilder: (_) => const AppLoadingWidget(),
    clickClose: false,
    allowClick: false,
    crossPage: true,
    ignoreContentClick: true,
    onClose: onClose,
    duration: duration,
    animationDuration: animationDuration,
    animationReverseDuration: animationReverseDuration,
    backgroundColor: Colors.black26,
  );
}

class AppLoadingWidget extends StatelessWidget {
  const AppLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoActivityIndicator(radius: 15.r);
  }
}

class FadeAnimation extends StatefulWidget {
  final Widget? child;
  final AnimationController controller;

  const FadeAnimation({super.key, this.child, required this.controller});

  @override
  FadeAnimationState createState() => FadeAnimationState();
}

class FadeAnimationState extends State<FadeAnimation>
    with SingleTickerProviderStateMixin {
  static final Tween<double> tweenOpacity = Tween<double>(begin: 0, end: 1);
  late final Animation<double> animation;
  late final Animation<double> animationOpacity;

  @override
  void initState() {
    animation =
        CurvedAnimation(parent: widget.controller, curve: Curves.decelerate);

    animationOpacity = tweenOpacity.animate(animation);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: animationOpacity,
      child: widget.child,
    );
  }
}

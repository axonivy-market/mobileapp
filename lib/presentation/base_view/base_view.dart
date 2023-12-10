import 'package:axon_ivy/util/widgets/bot_toast_helper.dart';
import 'package:flutter/material.dart';

abstract class BasePageScreen extends StatefulWidget {
  const BasePageScreen({Key? key}) : super(key: key);
}

abstract class BasePageScreenState<Page extends BasePageScreen>
    extends State<Page> {
  Function()? loading;

  void showLoading() {
    loading ??= showAppLoading();
  }

  void hideLoading() {
    loading?.call();
    loading = null;
  }
}

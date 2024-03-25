import 'package:axon_ivy/core/app/app_constants.dart';
import 'package:flutter/material.dart';

double getNoDataViewHeight(double screenHeight, double safeViewHeight) {
  return screenHeight -
      Constants.appBarHeight -
      Constants.bottomNavigationBarHeight -
      kToolbarHeight -
      safeViewHeight;
}

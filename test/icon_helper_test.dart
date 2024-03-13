import 'package:axon_ivy/util/resources/icons_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Find icon by name', () {
    var icon = getIconUsingPrefix(name: "fa-face-angry fa fa");
    debugPrint(icon.toString());
  });
}

import 'package:easy_localization/easy_localization.dart';

enum FieldType { url, username, password }

class Validators {
  static String? validateNotEmpty(String? value, FieldType type) {
    switch (type) {
      case FieldType.url:
        if (value == null || value.isEmpty) {
          return "validator.url".tr();
        }
        return null;
      case FieldType.username:
        if (value == null || value.isEmpty) {
          return "validator.username".tr();
        }
        return null;
      case FieldType.password:
        if (value == null || value.isEmpty) {
          return "validator.password".tr();
        }
        return null;
    }
  }
}

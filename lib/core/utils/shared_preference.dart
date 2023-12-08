import 'package:shared_preferences/shared_preferences.dart';
import '../di/di_setup.dart';

enum SharedPreferencesItem { accessToken }

class SharedPrefs {
  static final _pref = getIt<SharedPreferences>();
  static String? get getAccessToken =>
      _pref.getString(SharedPreferencesItem.accessToken.name);
  static Future setAccessToken(String value) =>
      _pref.setString(SharedPreferencesItem.accessToken.name, value);

  static void clear() {
    _pref.remove(SharedPreferencesItem.accessToken.name);
  }
}

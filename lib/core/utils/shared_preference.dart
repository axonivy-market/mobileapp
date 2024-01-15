import 'package:shared_preferences/shared_preferences.dart';
import '../di/di_setup.dart';

enum SharedPreferencesItem {
  accessToken,
  baseUrl,
  username,
  password,
  isLogin,
  keyLastUpdatedTime,
}

class SharedPrefs {
  static final _pref = getIt<SharedPreferences>();

  static String? get getAccessToken =>
      _pref.getString(SharedPreferencesItem.accessToken.name);

  static Future setAccessToken(String value) =>
      _pref.setString(SharedPreferencesItem.accessToken.name, value);

  static String? get getBaseUrl =>
      _pref.getString(SharedPreferencesItem.baseUrl.name);

  static Future setBaseUrl(String value) =>
      _pref.setString(SharedPreferencesItem.baseUrl.name, value);

  static String? get getUsername =>
      _pref.getString(SharedPreferencesItem.username.name);

  static Future setUsername(String value) =>
      _pref.setString(SharedPreferencesItem.username.name, value);

  static String? get getPassword =>
      _pref.getString(SharedPreferencesItem.password.name);

  static Future setPassword(String value) =>
      _pref.setString(SharedPreferencesItem.password.name, value);

  static bool? get isLogin => _pref.getBool(SharedPreferencesItem.isLogin.name);

  static Future setIsLogin(bool value) =>
      _pref.setBool(SharedPreferencesItem.isLogin.name, value);

  static int? get lastUpdatedTime =>
      _pref.getInt(SharedPreferencesItem.keyLastUpdatedTime.name);

  static Future setLastUpdated(int value) =>
      _pref.setInt(SharedPreferencesItem.keyLastUpdatedTime.name, value);

  static void clear() {
    _pref.remove(SharedPreferencesItem.baseUrl.name);
    _pref.remove(SharedPreferencesItem.username.name);
    _pref.remove(SharedPreferencesItem.password.name);
    _pref.remove(SharedPreferencesItem.isLogin.name);
    _pref.remove(SharedPreferencesItem.keyLastUpdatedTime.name);
  }
}

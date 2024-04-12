import 'dart:convert';

import 'package:axon_ivy/data/models/profile/profile.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../di/di_setup.dart';

enum SharedPreferencesItem {
  accessToken,
  baseUrl,
  username,
  password,
  isLogin,
  keyLastUpdatedTime,
  profileInfo,
  isDarkMode,
  isDemoMode,
  isDemoLogin,
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

  static bool? get isDemoLogin =>
      _pref.getBool(SharedPreferencesItem.isDemoLogin.name);

  static Future setIsDemoLogin(bool value) =>
      _pref.setBool(SharedPreferencesItem.isDemoLogin.name, value);

  static int? get lastUpdatedTime =>
      _pref.getInt(SharedPreferencesItem.keyLastUpdatedTime.name);

  static Future setLastUpdated(int value) =>
      _pref.setInt(SharedPreferencesItem.keyLastUpdatedTime.name, value);

  static Future<bool> setProfileInfo(Profile profile) {
    final jsonString = json.encode(profile.toJson());
    return _pref.setString(SharedPreferencesItem.profileInfo.name, jsonString);
  }

  static Profile? getProfileInfo() {
    final jsonString = _pref.getString(SharedPreferencesItem.profileInfo.name);
    if (jsonString == null) {
      return null;
    }
    return Profile.fromJson(json.decode(jsonString));
  }

  static Future setThemeSetting(bool isDarkMode) =>
      _pref.setBool(SharedPreferencesItem.isDarkMode.name, isDarkMode);

  static bool? get themeSetting =>
      _pref.getBool(SharedPreferencesItem.isDarkMode.name);

  static Future setDemoSetting(bool isDarkMode) =>
      _pref.setBool(SharedPreferencesItem.isDemoMode.name, isDarkMode);

  static bool? get demoSetting =>
      _pref.getBool(SharedPreferencesItem.isDemoMode.name);

  static void clear() {
    _pref.remove(SharedPreferencesItem.baseUrl.name);
    _pref.remove(SharedPreferencesItem.username.name);
    _pref.remove(SharedPreferencesItem.password.name);
    _pref.remove(SharedPreferencesItem.isLogin.name);
    _pref.remove(SharedPreferencesItem.keyLastUpdatedTime.name);
    _pref.remove(SharedPreferencesItem.profileInfo.name);
    _pref.remove(SharedPreferencesItem.isDemoMode.name);
    _pref.remove(SharedPreferencesItem.isDemoLogin.name);
  }

}

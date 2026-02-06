import 'dart:convert';

import 'package:axon_ivy/core/di/di_setup.dart';
import 'package:axon_ivy/features/profile/domain/entities/profile/profile.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum SharedPreferencesItem {
  baseUrl,
  isLogin,
  keyLastUpdatedTime,
  profileInfo,
  isDarkMode,
  isDemoMode,
  isDemoLogin,
}

class SharedPrefs {
  static final _pref = getIt<SharedPreferences>();

  static String? get getBaseUrl =>
      _pref.getString(SharedPreferencesItem.baseUrl.name);

  static Future setBaseUrl(String value) =>
      _pref.setString(SharedPreferencesItem.baseUrl.name, value);


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
    _pref.remove(SharedPreferencesItem.isLogin.name);
    _pref.remove(SharedPreferencesItem.keyLastUpdatedTime.name);
    _pref.remove(SharedPreferencesItem.profileInfo.name);
    _pref.remove(SharedPreferencesItem.isDemoMode.name);
    _pref.remove(SharedPreferencesItem.isDemoLogin.name);
  }

}

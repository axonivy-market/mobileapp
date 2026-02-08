import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive_ce/hive_ce.dart';

class SecureStorage {
  static const _keyEncryption = 'encryptionKey';
  static const _keyAccessToken = 'accessToken';
  static const _keyUsername = 'username';
  static const _keyPassword = 'password';

  // In-memory cache for sync access (loaded at app startup)
  static String? _cachedUsername;
  static String? _cachedPassword;
  static String? _cachedAccessToken;

  static const _storage = FlutterSecureStorage(
    aOptions: AndroidOptions(encryptedSharedPreferences: true),
    iOptions: IOSOptions(
      accessibility: KeychainAccessibility.first_unlock_this_device,
    ),
  );

  // Sync getters (read from in-memory cache)
  static String? get username => _cachedUsername;
  static String? get password => _cachedPassword;
  static String? get accessToken => _cachedAccessToken;

  /// Load credentials from secure storage into memory cache.
  /// Call this once at app startup before any HTTP requests.
  static Future<void> loadCredentials() async {
    _cachedUsername = await _storage.read(key: _keyUsername);
    _cachedPassword = await _storage.read(key: _keyPassword);
    _cachedAccessToken = await _storage.read(key: _keyAccessToken);
  }

  /// Save credentials to secure storage and update memory cache.
  static Future<void> saveCredentials({
    required String username,
    required String password,
  }) async {
    _cachedUsername = username;
    _cachedPassword = password;
    await _storage.write(key: _keyUsername, value: username);
    await _storage.write(key: _keyPassword, value: password);
  }

  /// Save access token to secure storage and update memory cache.
  static Future<void> saveAccessToken(String token) async {
    _cachedAccessToken = token;
    await _storage.write(key: _keyAccessToken, value: token);
  }

  /// Clear all credentials from secure storage and memory cache.
  static Future<void> clearCredentials() async {
    _cachedUsername = null;
    _cachedPassword = null;
    _cachedAccessToken = null;
    await _storage.delete(key: _keyUsername);
    await _storage.delete(key: _keyPassword);
    await _storage.delete(key: _keyAccessToken);
  }

  /// Get or generate Hive encryption key.
  static Future<Uint8List> encryptionKeyUint8List() async {
    var keyString = await _storage.read(key: _keyEncryption);
    if (keyString == null) {
      final key = Hive.generateSecureKey();
      keyString = base64UrlEncode(key);
      await _storage.write(key: _keyEncryption, value: keyString);
    }
    return base64Url.decode(keyString);
  }
}

import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive_ce/hive_ce.dart';

class SecureStorage {
  static const encryptionKey = "encryptionKey";

  static Future<Uint8List> encryptionKeyUint8List() async {
    const secureStorage = FlutterSecureStorage();
    final encryptionKeyString = await secureStorage.read(key: 'encryptionKey');
    if (encryptionKeyString == null) {
      final key = Hive.generateSecureKey();
      await secureStorage.write(
        key: encryptionKey,
        value: base64UrlEncode(key),
      );
    }
    final key = await secureStorage.read(key: encryptionKey);
    return base64Url.decode(key!);
  }
}

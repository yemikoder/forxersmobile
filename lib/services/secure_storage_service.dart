

import 'package:flutter/cupertino.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageManager {
  AndroidOptions _getAndroidOptions() => const AndroidOptions(
    encryptedSharedPreferences: true,
  );
  late FlutterSecureStorage storage = FlutterSecureStorage(aOptions: _getAndroidOptions());

  Future<void> setSecureData(String key, String value) async {
    await storage.write(key: key, value: value);
  }

  Future<String?> getSecureData(String key) async {
    return await storage.read(key: key);
  }

  void removeSecureData(String key) async {
    await storage.delete(key: key);
  }

  Future<void> storeBool(String key, bool value) async {
    await storage.write(key: key, value: value.toString());
  }

  Future<bool> getBool(String key) async {
    String? value = await storage.read(key: key);
    return value?.toLowerCase() == 'true' ? true : false;
  }

  Future<void> storeString(String key, String value) async {
    await storage.write(key: key, value: value);
  }

  Future<String?> getString(String key) async {
    return await storage.read(key: key);
  }

  void removeKey(String key) async {
    await storage.delete(key: key);
  }
}
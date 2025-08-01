// import 'package:shared_preferences/shared_preferences.dart';
//
// class StorageManager {
//
//   late SharedPreferences _sharedPreferences;
//
//   Future<void> _init()async {
//     _sharedPreferences = await SharedPreferences.getInstance();
//   }
//
//   Future<void> storeString(String key, value)async {
//     await _init();
//     _sharedPreferences.setString(key, value);
//   }
//
//   Future<void> storeStringList(String key, value)async {
//     await _init();
//     await _sharedPreferences.setStringList('items', value);
//   }
//
//   Future<void> storeBool(String key, bool value)async {
//     await _init();
//     _sharedPreferences.setBool(key, value);
//   }
//
//   Future<String?> getString(String key)async {
//     await _init();
//     return _sharedPreferences.getString(key);
//   }
//
//   Future<List<String>?> getStringList(String key)async {
//     await _init();
//     return _sharedPreferences.getStringList(key);;
//   }
//
//   void removeKey(String key)async {
//     await _init();
//    _sharedPreferences.remove(key);
//   }
//
//   Future<bool> getBool(String key) async {
//     await _init();
//     return _sharedPreferences.getBool(key) ?? false;
//   }
// }
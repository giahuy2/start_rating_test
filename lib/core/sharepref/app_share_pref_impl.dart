part of 'app_share_pref.dart';

class AppSharePrefImpl extends AppSharePreference {
  final SharedPreferences _sharedPreferences;

  AppSharePrefImpl(this._sharedPreferences);

  @override
  Future<bool> saveInt({required AppSharePrefKey key, int value = 0}) async {
    return _sharedPreferences.setInt(key.key, value);
  }

  @override
  Future<bool> saveString({required AppSharePrefKey key, required String value}) async {
    return _sharedPreferences.setString(key.key, value);
  }

  @override
  Future<bool> saveDouble({required AppSharePrefKey key, double value = 0.0}) async {
    return _sharedPreferences.setDouble(key.key, value);
  }

  @override
  Future<bool> saveListString({required AppSharePrefKey key, required List<String> value}) async {
    return _sharedPreferences.setStringList(key.key, value);
  }

  @override
  Future<bool> removeWithKey({required AppSharePrefKey key}) {
    return _sharedPreferences.remove(key.key);
  }

  @override
  Future<bool> has(AppSharePrefKey key) async {
    return _sharedPreferences.containsKey(key.key);
  }

  @override
  double? getDouble({required AppSharePrefKey key}) {
    return _sharedPreferences.getDouble(key.key);
  }

  @override
  int? getInt({required AppSharePrefKey key}) {
    return _sharedPreferences.getInt(key.key);
  }

  @override
  List<String>? getListString({required AppSharePrefKey key})  {
    return _sharedPreferences.getStringList(key.key);
  }

  @override
  Future<Object?> getValue({required AppSharePrefKey key}) async {
    return _sharedPreferences.get(key.key);
  }

  @override
  String? getString({required AppSharePrefKey key}) {
    return _sharedPreferences.getString(key.key);
  }

  @override
  Future<bool> clear() async {
    return _sharedPreferences.clear();
  }

  @override
  bool? getBoolean({required AppSharePrefKey key}) {
    return _sharedPreferences.getBool(key.key);
  }

  @override
  Future<bool> saveBool({required AppSharePrefKey key, bool value = false}) {
    return _sharedPreferences.setBool(key.key, value);
  }
}

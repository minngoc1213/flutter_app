import 'package:shared_preferences/shared_preferences.dart';

class AppPrefs {
  static final AppPrefs _instance = AppPrefs._internal();
  factory AppPrefs() => _instance;

  AppPrefs._internal();

  SharedPreferences? _prefs;

  Future init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  // ===== SET =====
  Future setIsDark(bool value) async {
    await _prefs?.setBool("isDark", value);
  }

  // ===== GET =====
  bool? getIsDark() {
    return _prefs?.getBool("isDark");
  }


}
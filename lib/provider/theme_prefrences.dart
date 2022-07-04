

import 'package:shared_preferences/shared_preferences.dart';

class ThemePrefrences {
  static const prefkey = 'Pref_key';

  setTheme(bool value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool(prefkey, value);
  }

  getTheme() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getBool(prefkey) ?? false;
  }
}

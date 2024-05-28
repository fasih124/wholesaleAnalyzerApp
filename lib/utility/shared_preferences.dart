import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsUtil {
  static Future<void> saveLoginStatus(bool isLoggedIn) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLoggedIn', isLoggedIn);
  }

  static Future<bool> getLoginStatus() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool('isLoggedIn') ?? false;
  }

  static Future<void> saveSellerId(String id) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('SellerID', id);
  }

  static Future<String?> getSellerId() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('SellerID');
  }
}

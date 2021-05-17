part of 'shared.dart';

class SharedPreferenceHelper {
  static String tokenUserKey = "";
  Future<bool> saveUserToken(String getUserToken) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(tokenUserKey, getUserToken);
  }

  // get data
  Future<String> getUserToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(tokenUserKey);
  }
}

import 'package:shared_preferences/shared_preferences.dart';

class HelperFunction{
//  declaration

  static String userLoggerInKey = "";
  static String userNameKey = "";
  static String userEmailKey = "";

//  declaration
// **********************************
// get user logged in status

  static Future<bool?> getUserInLoggedInStatus() async{
    SharedPreferences sf = await SharedPreferences.getInstance();
    sf.getBool(userLoggerInKey);
    return null;
  }

// **********************************
  static Future<bool> saveUserLoggedInStatus(bool isUserLoggedIn) async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return await sf.setBool(userLoggerInKey, isUserLoggedIn);
  }

  static Future<bool> saveUserNameSF(String userName) async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return await sf.setString(userNameKey, userName);
  }

  static Future<bool> saveUserEmailSF(String userEmail) async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return await sf.setString(userEmailKey, userEmail);
  }


  static Future<String?> getUserEmailFromSF() async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return sf.getString(userEmailKey);
  }

  static Future<String?> getUserNameFromSF() async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return sf.getString(userNameKey);
  }

}


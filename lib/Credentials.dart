import 'package:axa_biz/view_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'login_model.dart';

class Credentials{
  String? finalUsername;
  String? finalPassword;
  String? firstName;

  void saveCredentials(
      String username, String password) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('username', username);
    await prefs.setString('password', password);
    //await prefs.setString('first name', firstName);
  }

  void getSavedCredentials() async {
    final prefs = await SharedPreferences.getInstance();
    finalUsername = prefs.getString('username');
    finalPassword = prefs.getString('password');
    firstName = prefs.getString('first name');

  }

  String? getFirstName(LoginModel user) {
    String? name = user.firstName;
    List<String> words = name!.split(" ");
    firstName = words[0];
    return firstName;
  }

  void clearCredentials() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }
}
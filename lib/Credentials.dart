import 'package:shared_preferences/shared_preferences.dart';
import 'login_model.dart';

class Credentials{
  String? finalUsername;
  String? finalPassword;
  String? firstName;

  Future<void> saveCredentials(
      String username, String password , String firstName) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('username', username);
    await prefs.setString('password', password);
    await prefs.setString('first name', firstName);
  }

  Future<void> getSavedCredentials() async {
    final prefs = await SharedPreferences.getInstance();
    finalUsername = prefs.getString('username');
    finalPassword = prefs.getString('password');
    firstName = prefs.getString('first name');
  }

  String? getFirstName(LoginModel user) {
    String? name = user.name;
    List<String> words = name!.split(" ");
    firstName = words[0];
    return firstName;
  }

  void clearCredentials() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }
}
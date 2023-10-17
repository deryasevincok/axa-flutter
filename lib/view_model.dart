import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ViewModel extends ChangeNotifier {
  int vehicleID = 0;
  int vehBrandId = 0;
  String vehBrand = "";
  String vehStyle = "";
  String uploader = "";
  int uploaderID = 0;
  int mbid = 0;
  String photo = "";
  String endDate = "";
  int milage = 0;
  String year = "";
  String damageType = "";
  String title = "";
  String username = "";
  String password = "";
  int? id;
  String? name = "";
  String? token;
  String? role;
  String firstName = "";

  // Getter ve setter sadece _username için gereklidir.
  String get _username => username;

  set _username(String val) {
    username = val;
    notifyListeners();
  }

  // Getter ve setter sadece _password için gereklidir.
  String get _password => password;
  set _password(String val) {
    password = val;
    notifyListeners();
  }

  /*String get _firstName => firstName;
  set _firstName(String val) {
    firstName = val;
    notifyListeners();
  }

  void fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['firstName'];
    username = json['username'];
    token = json['token'];
    role = json['role'];
    List<String> words = name!.split(" ");
    firstName = words[0];
    notifyListeners();
  }*/
}

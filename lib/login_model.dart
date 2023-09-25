class LoginModel {
  int? id;
  String? firstName;
  String? username;
  String? token;
  String? role;

  LoginModel({this.id, this.firstName, this.username, this.token, this.role});

  LoginModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['firstName'];
    username = json['username'];
    token = json['token'];
    role = json['role'];
  }

}


class LoginModel {
  int? id;
  String? name;
  String? username;
  String? token;
  String? role;

  LoginModel({this.id, this.name, this.username, this.token, this.role});

  LoginModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['firstName'];
    username = json['username'];
    token = json['token'];
    role = json['role'];
  }

}


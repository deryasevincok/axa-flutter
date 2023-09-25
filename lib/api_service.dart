import 'package:dio/dio.dart';

class ApiService {
  Response? response;

  ApiService({this.response});

  final Dio dio = Dio();

  Future<bool> serviceLogin(String username, String password) async {
    String uri = 'https://www.hasarliotopazari.com/AXAHop.API/api/Account/Login';


    try {
      response = await dio.post(uri, data: {
        'Username': username,
        'Password': password,
      });

      if (response?.statusCode == 200) {
        // Başarılı işlem
        return true;
      } else {
        // Hata durumu
        return false;
      }
    } catch (e) {
      // Hata durumu
      return false;
    }
  }
}

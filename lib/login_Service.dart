/*import 'package:axa_biz/service/api_service.dart';
import 'package:axa_biz/view_model.dart';
import 'package:dio/dio.dart';

import 'login_model.dart';

class LoginService {
  Future<bool> login(String username, String password) async {
    ApiService apiService = ApiService();
    ViewModel viewModel = ViewModel();

    try {
      if (await apiService.serviceLogin(username, password)) {
        // Başarılı işlem
        Response? response = apiService.response;
        viewModel.fromJson(response!.data);

        // Bu kullanım, giriş başarılı olduğunda kullanıcı bilgilerini geri döndürmek yerine, View Model üzerinden erişmeyi tercih etmelisiniz.
        // credentials.getFirstName(user)!;
        // Bunun yerine, ViewModel üzerinden bilgileri güncellemek daha iyi bir uygulama tasarımı sağlar.

        return true;
      } else {
        // Hata durumu
        return false;
      }
    } catch (e) {
      return false;
    }
  }
}
*/
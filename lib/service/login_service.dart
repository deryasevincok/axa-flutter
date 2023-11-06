import 'dart:math';

import 'package:axa_biz/Credentials.dart';
import 'package:axa_biz/login_model.dart';
import 'package:axa_biz/service/api_service.dart';
import 'package:axa_biz/view_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../snack_bar_helper.dart';

class LoginService {
  Future<bool> login(BuildContext context, String username, String password) async {
    Credentials credentials = Credentials();
    ApiService apiService = ApiService();
    final ViewModel viewModel = Provider.of<ViewModel>(context,listen: false);

    try {
      if (await apiService.serviceLogin(username, password)) {
        // Başarılı işlem
        Response? response = apiService.response;
        LoginModel loginModel = LoginModel.fromJson(response!.data);
        String? loginModelFirstName = credentials.getFirstName(loginModel);
        viewModel.firstName = loginModelFirstName!;

        // Bu kullanım, giriş başarılı olduğunda kullanıcı bilgilerini geri döndürmek yerine, View Model üzerinden erişmeyi tercih etmelisiniz.
        // credentials.getFirstName(user)!;
        // Bunun yerine, ViewModel üzerinden bilgileri güncellemek daha iyi bir uygulama tasarımı sağlar.
        return true;
      }
        // Hata durumu
        return false;

    } catch (e) {
      SnackBarHelper.showErrorSnackBar(context, "Bir hata oluştu: $e");
      return false;
    }
  }
}

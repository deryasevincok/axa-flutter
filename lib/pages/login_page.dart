import 'package:axa_biz/api_service.dart';
import 'package:axa_biz/login_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'main_page/main_page.dart';
import '../extension.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();

  //Username ve password kontrol
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String? firstName;

  //sharedprefences ile kullanılacak bilgiler hafızaya atıldı
  void saveCredentials(
      String username, String password, String firstName) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('username', username);
    await prefs.setString('password', password);
    await prefs.setString('first name', firstName);
  }

  void getFirstName(LoginModel user) {
    String? name = user.firstName;
    List<String> words = name!.split(" ");
    firstName = words[0];
  }

  Future<bool> login(String username, String password) async {
    ApiService apiService = ApiService();

    try {
      if (await apiService.serviceLogin(username, password)) {
        // Başarılı işlem
        Response? response = apiService.response;
        LoginModel user = LoginModel.fromJson(response!.data);
        getFirstName(user);
        return true;
      } else {
        // Hata durumu
        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("sıkıntı"),
          ),
        );
        return false;
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Bir hata oluştu: $e'),
        ),
      );
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:
          true, //klaveden yazarken username'i ve passwordu görmek için kullanıldı
      body: SingleChildScrollView(
        //klavye açıldığında overflow hatası veriyordu o yüzden kullanıldı
        child: Container(
          height: context.sHeight,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/araba.png"),
              fit: BoxFit.cover, //ekran dolduruldu .jpg ile
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(context.sWidth * 0.01),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(context.sHeight * 0.002),
                  child: Container(
                    alignment: AlignmentDirectional.topStart,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "DERT",
                          style:
                              Theme.of(context).textTheme.headlineLarge!.merge(
                                    context.loginTextStyle(),
                                  ),
                        ),
                        Text(
                          "VARSA",
                          style:
                              Theme.of(context).textTheme.headlineLarge!.merge(
                                    context.loginTextStyle(),
                                  ),
                        ),
                        Text(
                          "DERMAN",
                          style:
                              Theme.of(context).textTheme.headlineLarge!.merge(
                                    context.loginTextStyle(),
                                  ),
                        ),
                        Text(
                          "AXA",
                          style:
                              Theme.of(context).textTheme.headlineLarge!.merge(
                                    context.logintextStyleRed(),
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
                context.emptyWidget(0.05),
                Form(
                  //TODO global key eklenecek
                  key: formKey,
                  child: Padding(
                    padding: EdgeInsets.all(context.sHeight * 0.03),
                    child: Column(
                      children: [
                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Kullanıcı adı boş bırakılamaz';
                            }
                            return null;
                          },
                          controller: usernameController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            errorStyle: const TextStyle(color: Colors.amber),
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            labelText: 'USERNAME',
                            labelStyle: Theme.of(context)
                                .textTheme
                                .headlineLarge!
                                .merge(
                                  context.textFormStyle(),
                                ),
                          ),
                        ),
                        context.emptyWidget(0.02),
                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Şifre boş bırakılamaz';
                            }
                            return null;
                          },
                          controller: passwordController,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            errorStyle: const TextStyle(color: Colors.amber),
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                              ), // Optional: Set the focused border color if needed
                            ),
                            labelText: 'PASSWORD',
                            labelStyle: Theme.of(context)
                                .textTheme
                                .headlineLarge!
                                .merge(
                                  context.textFormStyle(),
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                context.emptyWidget(0.05),
                ElevatedButton(
                  onPressed: () async {
                    if (formKey.currentState!.validate()) {

                      bool loginSuccessful = await login(
                        usernameController.text.toString(),
                        passwordController.text.toString(),
                      );

                      if (loginSuccessful) {
                        saveCredentials(
                          usernameController.text.toString(),
                          passwordController.text.toString(),
                          firstName!,
                        );

                        // ignore: use_build_context_synchronously
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MainPage(
                              firstName: firstName,
                            ),
                          ),
                        );
                      }
                    }
                  },
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                      //EdgeInsets.only(left: 120.0,right: 120.0,top: 20.0,bottom: 20.0),
                      EdgeInsets.symmetric(
                          vertical: context.sHeight * 0.02,
                          horizontal: context.sWidth * 0.35),
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(context.sHeight),
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all(
                      const Color(0xFFF90C0C),
                    ),
                  ),
                  child: Text(
                    "LOGIN",
                    style: Theme.of(context).textTheme.headlineLarge!.merge(
                          context.buttonTextStyle(),
                        ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

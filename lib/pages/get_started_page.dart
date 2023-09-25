import 'package:axa_biz/pages/main_page/main_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:math' as math;
import '../extension.dart';
import 'login_page.dart';

class GetStartedPage extends StatefulWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  State<GetStartedPage> createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
  String? finalUsername;
  String? finalPassword;
  String? firstName;

  //kullanıcı adı, şifre ve isim bilgileri çağırılıyor
  void getSavedCredentials() async {
    final prefs = await SharedPreferences.getInstance();
    final savedUsername = prefs.getString('username');
    final savedPassword = prefs.getString('password');
    final obtainedName = prefs.getString('first name');
    setState(
          () {
            finalUsername = savedUsername;
            finalPassword = savedPassword;
            firstName = obtainedName;
            },
      );
  }

  //gerekli görüldüğünde bilgileri temizlemek için
  void clearCredentials() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SafeArea(
          child: Scaffold(
            body: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/galata.png"),
                  fit: BoxFit.cover,
                ),
              ),
              padding: EdgeInsets.all(context.sHeight * 0.03),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Transform.rotate(
                    angle: -math.pi / context.sHeight * 70,
                    //alignment: Alignment.centerRight,
                    child: Text(
                      "AXA",
                      style: context.getStartedTitleStyle(),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(bottom: context.sHeight * 0.025),
                    child: ElevatedButton(
                      onPressed: () {
                        getSavedCredentials();
                        //clearCredentials();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => finalUsername == null ? const LoginPage() : MainPage(firstName: firstName) ,
                          ),
                        );
                      },
                      //TODO MVVM BAK
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                          //EdgeInsets.only(left: 120.0,right: 120.0,top: 20.0,bottom: 20.0),
                          EdgeInsets.symmetric(
                              vertical: context.sHeight * 0.03,
                              horizontal: context.sWidth * 0.3),
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
                        "GET STARTED",
                        style: Theme.of(context).textTheme.headlineLarge!.merge(
                              context.buttonTextStyle(),
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}



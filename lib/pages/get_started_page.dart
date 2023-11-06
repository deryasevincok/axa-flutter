import 'package:axa_biz/Credentials.dart';
import 'package:axa_biz/pages/main_page/main_page.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import '../extension.dart';
import 'login_page.dart';

class GetStartedPage extends StatefulWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  State<GetStartedPage> createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {

  Credentials credentials = Credentials();

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
                    child: Text(
                      "AXA",
                      style: context.getStartedTitleStyle(),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: context.sHeight * 0.025),
                    child: ElevatedButton(
                      onPressed: () {
                        credentials.getSavedCredentials();
                        credentials.clearCredentials();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => credentials.finalUsername == null
                                ? const LoginPage()
                                : MainPage(),
                          ),
                        );
                      },
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(
                              vertical: context.sHeight * 0.03,
                              horizontal: context.sWidth * 0.3),
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(context.sHeight),
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

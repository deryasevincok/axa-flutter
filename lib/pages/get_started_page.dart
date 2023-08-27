import 'package:flutter/material.dart';
import 'dart:math' as math;
import '../extension.dart';
import 'login_page.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                  ), //TODO İNGİLİZCE İSİMLER

                  Padding(
                    padding: EdgeInsets.only(bottom: context.sHeight * 0.025),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginPage(),
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


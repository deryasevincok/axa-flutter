import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'extension.dart';
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
        Scaffold(
          body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/galata.png"),
                fit: BoxFit.cover,
              ),
            ),
            padding: EdgeInsets.all(context.sHeight * 0.03),
            child: SafeArea(
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
                    padding: EdgeInsets.only(
                      left: context.sHeight * 0.01,
                      right: context.sHeight * 0.01,
                      bottom: context.sHeight * 0.03,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginPage(),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(context.sHeight),
                        ),
                        height: context.sHeight * 0.08,
                        child: Center(
                          child: Text(
                            "Get started",
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge!
                                .merge(
                              context.buttonTextStyle(),
                            ),
                          ),
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

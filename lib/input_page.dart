import 'package:axa_biz/login_page.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
import 'dart:math' as math;

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      //Container üstüne Text ve Card widgetlerı koyuldu Stack sayesinde
      children: <Widget>[
        Scaffold(
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/galata.jpg"),
                fit: BoxFit.cover, //ekran dolduruldu .jpg ile
              ),
            ),
            padding: EdgeInsets.all(10.0),
            child: SafeArea(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    //RotationTransition(turns: AlwaysStoppedAnimation(15/360)), //saat yönünde rotate
                    Transform.rotate(
                      angle: -math.pi / 4,
                      child: Text(
                        "AXA",
                        style: TextStyle(
                          fontSize: 200.0,
                          color: Colors.white,
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()),
                          );
                        },
                        child: Container(
                          child: Center(
                            child: Text(
                              "Get started",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          height: 50.0,
                          //padding: EdgeInsets.only(bottom: 20.0),
                          //margin: EdgeInsets.only(top: 10.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

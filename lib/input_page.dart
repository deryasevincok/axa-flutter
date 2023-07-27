import 'package:axa_biz/login_page.dart';
import 'package:flutter/material.dart';
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
                  children: <Widget>[
                    //RotationTransition(turns: AlwaysStoppedAnimation(15/360)), //saat yönünde rotate
                    Transform.rotate(
                      angle: -math.pi / 15,
                      child: Text(
                        "AXA",
                        style: Theme.of(context).textTheme.headlineLarge!.merge(
                              TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.60,
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                      ), //TODO EXTENSİON
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
                              style: Theme.of(context).textTheme.headlineLarge!.merge(
                                TextStyle(
                                  color: Colors.white,
                                  fontSize: MediaQuery.of(context).size.width * 0.05,
                                ),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          height: 50.0,
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

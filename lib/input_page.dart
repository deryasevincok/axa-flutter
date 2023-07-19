import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(   //Container üstüne Text ve Card widgetlerı koyuldu Stack sayesinde
        children: <Widget>[
          Scaffold(
            body: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/galata.jpg"),
                  fit: BoxFit.cover,  //ekran dolduruldu .jpg ile
                ),
              ),
              padding: EdgeInsets.all(10.0),
              child: SafeArea(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      //RotationTransition(turns: AlwaysStoppedAnimation(15/360)),
                      Text(
                        "AXA",
                        style: TextStyle(
                          fontSize: 200.0,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                          color: Colors.red,
                          child: SizedBox(
                            width: 300,
                            height: 50,
                            child: Center(
                              child: Text(
                                'GET STARTED',
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
          ),
        ],
      );
  }
}

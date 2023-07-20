import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: Container(
            color: Colors.white,
            child: SafeArea(
              child: Container(
                //alignment: AlignmentDirectional.topStart,
                child: Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "MERHABA",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 32,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "DERYA",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 32,
                              ),
                            ),
                            Icon(
                              Icons.abc_outlined,
                              color: Colors.yellow,
                            ),
                          ],
                        ),
                      ],
                    ),
                    CircleAvatar(
                      radius: 50.0,
                      backgroundImage: AssetImage('assets/galata.jpg'),
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

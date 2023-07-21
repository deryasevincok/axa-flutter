import 'package:flutter/material.dart';

import 'main_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/siyah.jpg"),
                fit: BoxFit.cover, //ekran dolduruldu .jpg ile
              ),
            ),
            child: SafeArea(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        alignment: AlignmentDirectional.topStart,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "DERT",
                              style: TextStyle(
                                fontSize: 50.0,
                                fontFamily: 'Lugrasimo',
                              ),
                            ),
                            Text(
                              "VARSA",
                              style: TextStyle(
                                fontSize: 50.0,
                                fontFamily: 'Lugrasimo',
                              ),
                            ),
                            Text(
                              "DERMAN",
                              style: TextStyle(
                                fontSize: 50.0,
                                fontFamily: 'Lugrasimo',
                              ),
                            ),
                            Text(
                              "AXA",
                              style: TextStyle(
                                fontSize: 50.0,
                                color: Colors.red,
                                fontFamily: 'Lugrasimo',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            labelText: 'USERNAME',
                            labelStyle: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Pacifico',
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'PASSWORD',
                            labelStyle: TextStyle(color: Colors.white, fontFamily: 'Pacifico'),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MainPage()),
                          );
                        },
                        child: Container(
                          child: Center(
                            child: Text(
                              "LOGIN",
                              style: TextStyle(color: Colors.white,fontFamily: 'Oswald',fontSize: 20.0),
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

import 'package:flutter/material.dart';

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
                              ),
                            ),
                            Text(
                              "VARSA",
                              style: TextStyle(
                                fontSize: 50.0,
                              ),
                            ),
                            Text(
                              "DERMAN",
                              style: TextStyle(
                                fontSize: 50.0,
                              ),
                            ),
                            Text(
                              "AXA",
                              style: TextStyle(
                                fontSize: 50.0,
                                color: Colors.red,
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
                            labelStyle: TextStyle(color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'PASSWORD',
                            labelStyle: TextStyle(color: Colors.white),
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
                            MaterialPageRoute(
                                builder: (context) => LoginPage()),
                          );
                        },
                        child: Container(
                          child: Center(
                            child: Text(
                              "LOGIN",
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
        )
      ],
    );
  }
}

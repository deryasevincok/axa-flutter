import 'package:flutter/material.dart';
import 'main_page.dart';
import 'extension.dart';

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
              child: Padding(
                padding: EdgeInsets.all(context.sWidth * 0.01),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          alignment: AlignmentDirectional.topStart,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "DERT",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineLarge!
                                    .merge(
                                      TextStyle(
                                          fontSize: context.sWidth * 0.17),
                                    ),
                              ),
                              Text(
                                "VARSA",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineLarge!
                                    .merge(
                                      TextStyle(
                                          fontSize: context.sWidth * 0.17),
                                    ),
                              ),
                              Text(
                                "DERMAN",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineLarge!
                                    .merge(
                                      TextStyle(
                                          fontSize: context.sWidth * 0.17),
                                    ),
                              ),
                              Text(
                                "AXA",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineLarge!
                                    .merge(
                                      TextStyle(
                                          fontSize: context.sWidth * 0.10,
                                          color: Colors.red),
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          //text form field
                          Form(
                            child: Column(
                              children: [
                                TextFormField(
                                  decoration: InputDecoration(
                                    border: const OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                    ),
                                    labelText: 'USERNAME',
                                    labelStyle: Theme.of(context)
                                        .textTheme
                                        .headlineLarge!
                                        .merge(
                                          const TextStyle(
                                              color: Colors.white,
                                              fontFamily: "Playfair",
                                              fontSize: 24.0),
                                        ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'PASSWORD',
                                    labelStyle: Theme.of(context)
                                        .textTheme
                                        .headlineLarge!
                                        .merge(
                                          TextStyle(
                                              color: Colors.white,
                                              fontFamily: "Playfair",
                                              fontSize: 24.0),
                                        ),
                                  ),
                                )
                              ],
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
                                  builder: (context) => MainPage()),
                            );
                          },
                          child: Container(
                            child: Center(
                              child: Text(
                                "LOGIN",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Oswald',
                                    fontSize: 20.0),
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
        ),
      ],
    );
  }
}

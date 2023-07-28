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
            decoration: const BoxDecoration(
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
                        padding: EdgeInsets.all(context.sHeight * 0.002),
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
                                        fontSize: context.sWidth * 0.17,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                              ),
                              Text(
                                "VARSA",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineLarge!
                                    .merge(
                                      TextStyle(
                                        fontSize: context.sWidth * 0.17,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                              ),
                              Text(
                                "DERMAN",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineLarge!
                                    .merge(
                                      TextStyle(
                                        fontSize: context.sWidth * 0.17,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                              ),
                              Text(
                                "AXA",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineLarge!
                                    .merge(
                                      TextStyle(
                                        fontSize: context.sWidth * 0.17,
                                        color: Colors.red,
                                        fontWeight: FontWeight.w800,
                                      ),
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
                                          TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                            fontSize: context.sWidth * 0.06,
                                          ),
                                        ),
                                  ),
                                ),
                                EmptyWidget(context).emptyWidget(0.02),
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
                                            fontWeight: FontWeight.w700,
                                            fontSize: context.sWidth * 0.06,
                                          ),
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(context.sWidth * 0.07),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MainPage()),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius:
                                  BorderRadius.circular(context.sWidth),
                            ),
                            height: context.sWidth * 0.1,
                            child: Center(
                              child: Text(
                                "LOGIN",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Oswald',
                                    fontSize: context.sWidth * 0.06),
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
        ),
      ],
    );
  }
}

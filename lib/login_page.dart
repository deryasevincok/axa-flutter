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
                                    context.loginTextStyle(),
                                  ),
                            ),
                            Text(
                              "VARSA",
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineLarge!
                                  .merge(
                                    context.loginTextStyle(),
                                  ),
                            ),
                            Text(
                              "DERMAN",
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineLarge!
                                  .merge(
                                    context.loginTextStyle(),
                                  ),
                            ),
                            Text(
                              "AXA",
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineLarge!
                                  .merge(
                                    context.logintextStyleRed(),
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
                          child: Padding(
                            padding:  EdgeInsets.all(context.sHeight * 0.03),
                            child: Column(
                              children: [
                                TextFormField(
                                  decoration: InputDecoration(
                                    enabledBorder: const UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white),
                                    ),
                                    focusedBorder: const UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.white,
                                      ), // Optional: Set the focused border color if needed
                                    ),
                                    labelText: 'USERNAME',
                                    labelStyle: Theme.of(context)
                                        .textTheme
                                        .headlineLarge!
                                        .merge(
                                          context.textFormStyle(),
                                        ),
                                  ),
                                ),
                                EmptyWidget(context).emptyWidget(0.02),
                                TextFormField(
                                  decoration: InputDecoration(
                                    enabledBorder: const UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white),
                                    ),
                                    focusedBorder: const UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.white,
                                      ), // Optional: Set the focused border color if needed
                                    ),
                                    labelText: 'PASSWORD',
                                    labelStyle: Theme.of(context)
                                        .textTheme
                                        .headlineLarge!
                                        .merge(
                                          context.textFormStyle(),
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: context.sHeight * 0.02,
                          vertical: context.sHeight * 0.04),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MainPage()),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(context.sWidth),
                          ),
                          height: context.sHeight * 0.07,
                          child: Center(
                            child: Text(
                              "LOGIN",
                              style: context.buttonTextStyle(),
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

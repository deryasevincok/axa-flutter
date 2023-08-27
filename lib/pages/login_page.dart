import 'package:flutter/material.dart';
import 'main_page/main_page.dart';
import '../extension.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:true, //klaveden yazarken username'i ve passwordu görmek için kullanıldı
      body: SingleChildScrollView(  //klavye açıldığında overflow hatası veriyordu o yüzden kullanıldı
        child: Container(
          height: context.sHeight,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/araba.png"),
              fit: BoxFit.cover, //ekran dolduruldu .jpg ile
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(context.sWidth * 0.01),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                context.emptyWidget(0.05),
                Form(
                  //TODO global key eklenecek
                  child: Padding(
                    padding: EdgeInsets.all(context.sHeight * 0.03),
                    child: Column(
                      children: [
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            enabledBorder: const UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white),
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
                        context.emptyWidget(0.02),
                        TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            enabledBorder: const UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white),
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
                context.emptyWidget(0.08),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MainPage(),
                      ),
                    );
                  },

                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                      //EdgeInsets.only(left: 120.0,right: 120.0,top: 20.0,bottom: 20.0),
                      EdgeInsets.symmetric(
                          vertical: context.sHeight * 0.02,
                          horizontal: context.sWidth * 0.35),
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(context.sHeight),
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all(
                      const Color(0xFFF90C0C),
                    ),
                  ),
                  child: Text(
                    "LOGIN",
                    style: Theme.of(context).textTheme.headlineLarge!.merge(
                      context.buttonTextStyle(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

extension ContextExtSize on BuildContext {
  double get sWidth => MediaQuery.of(this).size.width;
  double get sHeight => MediaQuery.of(this).size.height;
}

extension ContextExtDynamicSize on BuildContext {
  double dynamicWidth(double value) => MediaQuery.of(this).size.width * value;
  double dynamicHeight(double value) => MediaQuery.of(this).size.height * value;
}

extension EmptyWidget on BuildContext {
  Widget emptyWidget(double value) => SizedBox(
        height: dynamicHeight(value),
      );
}

extension TextStyle1 on BuildContext {
  TextStyle getStartedTitleStyle() => TextStyle(
    fontFamily: 'Lato',
    fontSize: sWidth * 0.4,
    color: Colors.white,
    fontWeight: FontWeight.w800,
  );

  TextStyle loginTextStyle() => TextStyle(
        fontSize: sWidth * 0.17,
        fontWeight: FontWeight.w800,
      );

  TextStyle logintextStyleRed() => TextStyle(
      fontSize: sWidth * 0.17, fontWeight: FontWeight.w800, color: Colors.red);

  TextStyle buttonTextStyle() => TextStyle(
      color: Colors.white, fontFamily: 'Playfair', fontSize: sWidth * 0.06);

  TextStyle textFormStyle() => TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w700,
        fontSize: sWidth * 0.06,
      );

  TextStyle badgeStyle() => TextStyle(
        color: Colors.black,
        fontSize: sWidth * 0.03,
        fontWeight: FontWeight.w700,
      );

  TextStyle hizliMenuStyle() => TextStyle(
    fontSize: sWidth * 0.06,
    fontWeight: FontWeight.bold,
    fontFamily: 'Jost',
    color: Colors.black,
  );

  TextStyle hizliMenuTitleStyle() => TextStyle(
        color: Colors.black,
        fontSize: sHeight * 0.03,
      );

  TextStyle hizliMenuSubtitleStyle() => TextStyle(
        color: Colors.black,
        fontSize: sHeight * 0.02,
      );

  TextStyle mainTitleStyle() => TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w700,
        fontSize: sWidth * 0.1,
      );

  TextStyle izinIslemleriTitleStyle() => TextStyle(
      fontSize: sWidth * 0.05,
      color: Colors.black,
      fontWeight: FontWeight.bold,
      decoration: TextDecoration.underline);

  TextStyle izinIslemleriTextStyle() =>TextStyle(
        fontSize: sWidth * 0.05,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      );

  TextStyle titleStyle() =>TextStyle(
    color: Colors.black,
    fontSize: sWidth * 0.07,
    fontFamily: 'Jost'
  );

  TextStyle gununYemegiTitleStyle() =>TextStyle(
      fontSize: sWidth * 0.05,
      fontWeight: FontWeight.w700,
      fontFamily: 'Jost'
  );

  TextStyle gununYemegiTextStyle() =>TextStyle(
      fontSize: sWidth * 0.05,
      fontFamily: 'Jost'
  );




}

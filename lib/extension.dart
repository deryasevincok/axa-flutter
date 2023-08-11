import 'package:flutter/material.dart';
//TODO EXTENSION KULLANIMINI DAHA DA ARAŞTIR

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

extension Text1 on BuildContext {
  Text gununYemegiText(String value) => Text(
        value,
        style: gununYemegiTextStyle(),
      );

  Text fikrimVarText(String value) => Text(
        value,
        style: fikrimVarTextStyle(),
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
        fontSize: sWidth * 0.14,
        fontWeight: FontWeight.w800,
      );

  TextStyle logintextStyleRed() => TextStyle(
      fontSize: sWidth * 0.14, fontWeight: FontWeight.w800, color: Colors.red);

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

  TextStyle emojiStyle() => TextStyle(
        color: Colors.black,
        fontSize: sHeight * 0.05,
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

  TextStyle selectedTabBarStyle() => TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: sHeight * 0.025,
      );

  TextStyle unselectedTabBarStyle() => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: sHeight * 0.025,
      );

  TextStyle izinIslemleriTitleStyle() => TextStyle(
      fontSize: sWidth * 0.05,
      color: Colors.black,
      fontWeight: FontWeight.bold,
      decoration: TextDecoration.underline);

  TextStyle izinIslemleriTextStyle() => TextStyle(
        fontSize: sWidth * 0.05,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      );

  TextStyle titleStyle() => TextStyle(
      color: Colors.black, fontSize: sWidth * 0.07, fontFamily: 'Jost');

  TextStyle gununYemegiTitleStyle() => TextStyle(
      fontSize: sWidth * 0.05, fontWeight: FontWeight.w700, fontFamily: 'Jost');

  TextStyle gununYemegiTextStyle() =>
      TextStyle(fontSize: sWidth * 0.05, fontFamily: 'Jost');

  TextStyle hamburgerStyle() => TextStyle(fontSize: sHeight * 0.20);

  TextStyle fikrimVarTextStyle() => TextStyle(
      fontSize: sWidth * 0.06, fontFamily: 'Jost', fontWeight: FontWeight.w700);

  TextStyle duyuruIsimStyle() => TextStyle(
      fontSize: sWidth * 0.06,
      color: Colors.black,
      fontFamily: 'Jost',
      fontWeight: FontWeight.w500);

  TextStyle duyuruStyle() => TextStyle(
      fontSize: sWidth * 0.08,
      color: Colors.black,
      fontFamily: 'Jost',
      fontWeight: FontWeight.w500);
}

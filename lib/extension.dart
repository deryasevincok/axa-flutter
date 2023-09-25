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

extension Text1 on BuildContext {
  Text mealOfDayText(String value) => Text(
        value,
        style: foodTextStyle(),
      );

  Text ideaText(String value) => Text(
        value,
        style: ideaTextStyle(),
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
        fontSize: sWidth * 0.15,
        fontWeight: FontWeight.w900,
      );

  TextStyle logintextStyleRed() => TextStyle(
      fontSize: sWidth * 0.14, fontWeight: FontWeight.w800, color: Colors.red);

  TextStyle buttonTextStyle() => TextStyle(
      color: Colors.white, fontFamily: 'Playfair', fontSize: sWidth * 0.045,fontWeight: FontWeight.w800);

  TextStyle textFormStyle() => TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w700,
        fontSize: sWidth * 0.05,
      );

  TextStyle badgeStyle() => TextStyle(
        color: Colors.black,
        fontSize: sWidth * 0.03,
        fontWeight: FontWeight.w700,
      );

  TextStyle quickMenuStyle() => TextStyle(
        fontSize: sWidth * 0.06,
        fontWeight: FontWeight.bold,
        fontFamily: 'Jost',
        color: Colors.black,
      );

  TextStyle quickMenuTitleStyle() => TextStyle(
        color: Colors.black,
        fontSize: sHeight * 0.03,
      );

  TextStyle emojiStyle() => TextStyle(
        color: Colors.black,
        fontSize: sHeight * 0.05,
      );

  TextStyle quickMenuSubtitleStyle() => TextStyle(
        color: Colors.black,
        fontSize: sHeight * 0.018,
      );

  TextStyle mainTitleStyle() => TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w700,
        fontSize: sWidth * 0.08,
      );

  TextStyle selectedTabBarStyle() => TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: sHeight * 0.025,
      );

  TextStyle unselectedTabBarStyle() => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: sHeight * 0.025,
      );

  TextStyle permissionTitleStyle() => TextStyle(
      fontSize: sWidth * 0.05,
      color: Colors.black,
      fontWeight: FontWeight.bold,
      decoration: TextDecoration.underline);

  TextStyle permissionText1Style() => TextStyle(
        fontFamily: 'Jost',
        fontSize: 23.0,
        color: Colors.black,
        fontWeight: FontWeight.w500,
      );

  TextStyle permissionText2Style() => TextStyle(
    fontFamily: 'Jost',
    fontSize: 30.0,
    color: Colors.black,
    fontWeight: FontWeight.w700,
  );

  TextStyle permissionEmojiStyle() => TextStyle(
    fontFamily: 'Jost',
    fontSize: 30.0,
    color: Colors.black,
    fontWeight: FontWeight.w400,
  );

  TextStyle titleStyle() => TextStyle(
      color: Colors.black, fontSize: sWidth * 0.07, fontFamily: 'Jost');

  TextStyle foodTitleStyle() => TextStyle(
      fontSize: sWidth * 0.05, fontWeight: FontWeight.w700, fontFamily: 'Jost');

  TextStyle foodTextStyle() =>
      TextStyle(fontSize: sWidth * 0.05, fontFamily: 'Jost');

  TextStyle hamburgerStyle() => TextStyle(fontSize: sHeight * 0.20);

  TextStyle ideaTextStyle() => TextStyle(
      fontSize: sWidth * 0.07, fontFamily: 'Jost', fontWeight: FontWeight.w700);

  TextStyle announcementNameStyle() => TextStyle(
      fontSize: sWidth * 0.06,
      color: Colors.black,
      fontFamily: 'Jost',
      fontWeight: FontWeight.w500);

  TextStyle announcementStyle() => TextStyle(
      fontSize: sWidth * 0.06,
      color: Colors.black,
      fontFamily: 'Jost',
      fontWeight: FontWeight.w400);

  TextStyle axaLifeTextStyle() => TextStyle(
      color: Colors.black, fontFamily: 'Jost', fontWeight: FontWeight.w700,fontSize: sWidth * 0.035);

  TextStyle axaLifeEmojiStyle() => TextStyle(
    color: Colors.black,
    fontSize: sWidth * 0.09,);
}

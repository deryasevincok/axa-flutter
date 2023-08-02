import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'extension.dart';

class IzinIslemleri extends StatelessWidget {
  final Color color;
  final String text1;
  final String text2;
  final FaIcon icon;

  IzinIslemleri(this.color, this.text1, this.text2, this.icon);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(
            context.sWidth * 0.02,
          ), // Set the border radius
        ),
        margin: EdgeInsetsDirectional.all(
          context.sWidth * 0.04,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            icon,
            Text(
              text1,
              style: context.izinIslemleriTextStyle(),
            ),
            Text(
              text2,
              style: context.izinIslemleriTextStyle(),
            ),
          ],
        ),
      ),
    );
  }
}

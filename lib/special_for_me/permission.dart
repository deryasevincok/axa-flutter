import 'package:flutter/material.dart';
import '../extension.dart';

class Permission extends StatelessWidget {
  final Color? color;
  final String? text1;
  final String? text2;
  final String? emoji;
  bool? isActive = false;

  Permission(
      {Key? key,
      this.color,
      this.text1,
      this.text2,
      this.emoji,
      this.isActive})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: context.sHeight * 0.18,
        padding: EdgeInsets.all(context.sWidth * 0.003),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(
            context.sWidth * 0.02,
          ), // Set the border radius
        ),
        margin: EdgeInsetsDirectional.all(context.sWidth * 0.02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Visibility(
              visible: isActive!,
              child: Text(
                emoji!,
                style: context.permissionEmojiStyle(),
              ),
            ),
            context.emptyWidget(0.008),
            Text(
              text1!,
              style: context.permissionText1Style(),
            ),
            context.emptyWidget(0.001),
            Visibility(
              visible: isActive!,
              child: Text(
                text2!,
                style: context.permissionText2Style(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


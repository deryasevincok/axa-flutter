import 'package:flutter/material.dart';
import '../extension.dart';

class AxaSubPage extends StatelessWidget {
  final Color color;
  final String text;
  final String emoji;

  const AxaSubPage(this.color, this.text, this.emoji, {super.key});


  @override
  Widget build(BuildContext context) {
    //cümle uzunluğu
    List<String> words = text.split(' ');
    int wordCount = words.length;

    return Container(
      alignment: Alignment.centerLeft,
      width: context.sWidth * 0.25,
      height: context.sHeight * 0.12,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(context.sWidth * 0.03),
      ),
      child: Stack(
        clipBehavior: Clip.none, //dışarı taşması sağlandı
        alignment: Alignment.topRight,
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: context.sWidth * 0.08,
                right: context.sWidth * 0.04,
                left: context.sWidth * 0.03),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //Kelimelerin alt alta yazdırılması sağlandı.
              children: [
                for (int i = 0; i < wordCount; i++)
                  Text(
                    text.split(' ')[i],
                    style: context.axaLifeTextStyle(),
                  ),
              ],
            ),
          ),
          Positioned(
            top: -context.sWidth * 0.05,
            right: -context.sWidth * 0.07,
            child: Center(
              child: Text(
                emoji,
                style: context.axaLifeEmojiStyle(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

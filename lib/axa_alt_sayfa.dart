import 'package:flutter/material.dart';
import 'extension.dart';

class AxaAltSayfa extends StatelessWidget {
  final Color color;
  final String text;
  final String emoji;


  const AxaAltSayfa(this.color, this.text, this.emoji);

  //TODO Yazıları daha aşağı al

  @override
  Widget build(BuildContext context) {
    List<String> kelimeler = text.split(' ');
    int kelimeSayisi = kelimeler.length;

    return Container(
      height: context.sHeight * 0.12,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(context.sWidth * 0.03),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topRight,
        children: [
          Padding(
            padding: EdgeInsets.all(context.sWidth * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for(int i=0; i < kelimeSayisi;i++)
                Text(
                  text.split(' ')[i], // İlk kelime
                  style: const TextStyle(
                    color: Colors.black,
                    fontFamily: 'Jost',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: -context.sWidth * 0.05,
            right: -context.sWidth * 0.03,
            child: Center(
              child: Text(
                emoji,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: context.sWidth * 0.1,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

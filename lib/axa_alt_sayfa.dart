import 'package:flutter/material.dart';
import 'extension.dart';

class AxaAltSayfa extends StatelessWidget {
  final Color color;
  final String text;
  final String emoji;

  const AxaAltSayfa(this.color, this.text, this.emoji);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(context.sWidth * 0.03),
      ),
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Padding(
            padding: EdgeInsets.all(context.sWidth * 0.05),
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          Positioned(
            top: -context.sWidth * 0.03, // Adjust the top position to make it slightly overflow
            right: -context.sWidth * 0.03, // Adjust the right position to make it slightly overflow
            child: Text(
              emoji,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 30.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

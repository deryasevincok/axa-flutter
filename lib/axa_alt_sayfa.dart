import 'package:flutter/material.dart';
import 'extension.dart';

class AxaAltSayfa extends StatelessWidget {
  final Color color;
  final String text;

  const AxaAltSayfa(this.color, this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(
          context.sWidth * 0.02,
        ), // Set the border radius
      ),
      child: Padding(
        padding: EdgeInsets.all(context.sWidth * 0.05),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'extension.dart';

class AxaAltSayfa extends StatelessWidget {
  final Color color;
  final String text;

  const AxaAltSayfa(this.color, this.text);



  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(
              context.sWidth * 0.03,
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
        ),
        const Positioned(
          top: -12, // Ayarlayarak metni dikey yönde taşıyabilirsiniz
          right: -12, // Ayarlayarak metni yatay yönde taşıyabilirsiniz
          child: Text(
            '🏆', // Sağ üstte görünecek ekstra metin
            style: TextStyle(
              color: Colors.black,
              fontSize: 25.0, // İstediğiniz büyüklükte ayarlayabilirsiniz
            ),
          ),
        ),
      ],
    );
  }
}
import 'package:flutter/material.dart';
import '../../../axa_life/announcement.dart';
import '../../../axa_life/axa_life_sub_page.dart';
import '../../../extension.dart';
class AxaLife extends StatelessWidget {
  const AxaLife({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Announcement(),
              Announcement(),
              Announcement(),
            ],
          ),
        ),
        context.emptyWidget(0.05),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AxaSubPage(Color.fromRGBO(204, 213, 174, 0.38),
                "Axa'da Hayat", "🏆"),
            AxaSubPage(Color.fromRGBO(233, 237, 201, 0.38),
                "İş sürekliliği", "🧑‍💻"),
            AxaSubPage(Color.fromRGBO(254, 250, 224, 0.38),
                "Başarı prensipleri", "🎖️"),
          ],
        ),
        context.emptyWidget(0.04),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AxaSubPage(Color.fromRGBO(250, 237, 205, 0.38),
                "Taahütler", "✍️"),
            AxaSubPage(Color.fromRGBO(212, 163, 115, 0.38),
                "Sadelik manifestosu", "🎨"),
            AxaSubPage(Color.fromRGBO(212, 163, 115, 0.27),
                "Poliçeme duyarlıyım", "🎫"),
          ],
        )
      ],
    );
  }
}
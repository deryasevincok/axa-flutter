import 'package:axa_biz/extension.dart';
import 'package:flutter/material.dart';



//badge olmayan hızlı menü seçenkleri için ayrı class oluşturuldu
class QuickMenu extends StatelessWidget {
  final Color color;
  final String title;
  final String subtitle;
  final String emoji;

  const QuickMenu({super.key, required this.color, required this.title, required this.subtitle, required this.emoji});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.sWidth * 0.95,
      height: context.sHeight * 0.15,
      child: Padding(
        padding: EdgeInsets.all(
          context.sWidth * 0.03,
        ),
        child: ListTile(
          shape: RoundedRectangleBorder(
            // Use RoundedRectangleBorder for rounded corners
            borderRadius: BorderRadius.circular(context
                .sWidth *
                0.05), // Set the border radius as you prefer
          ),
          leading: Text(
            emoji,
            style: context.emojiStyle(),
          ),
          trailing: Image.asset("assets/chevron_right.png"),
          tileColor: color,
          mouseCursor: MouseCursor.uncontrolled,
          title: Text(
            title,
            style: context.quickMenuTitleStyle(),
          ),
          subtitle: Text(
            subtitle,
            style: context.quickMenuSubtitleStyle(),
          ),
        ),
      ),
    );
  }
}

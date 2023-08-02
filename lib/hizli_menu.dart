import 'package:axa_biz/extension.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HizliMenu extends StatelessWidget {
  final Color color;
  final String text1;
  final String text2;
  final FaIcon icon;

  HizliMenu(this.color, this.text1, this.text2, this.icon);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
        context.sWidth * 0.02,
      ),
      child: ListTile(
        onTap: () {
          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return Container(
                height: context.sHeight,
                color: Colors.amber,
                child: Padding(
                    padding: EdgeInsets.all(context.sWidth * 0.04),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        if (text1 ==
                            "İş seyehatı") //hızlı menü iş seyehatıysa gerekli maddeleri içine doldur.
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'İş Seyehati giriş',
                                style: context.hizliMenuStyle(),
                              ),
                              context.emptyWidget(0.02),
                              Text(
                                'İş Seyehati görüntüleme',
                                style: context.hizliMenuStyle(),
                              ),
                              context.emptyWidget(0.02),
                              Badge(
                                backgroundColor: Colors.amber,
                                label: Text(
                                  "1",
                                  style: context.badgeStyle(),
                                ),
                                child: Text(
                                  'İş Seyehati onaylama',
                                  style: context.hizliMenuStyle(),
                                ),
                              ),
                            ],
                          ),
                      ],
                    )),
              );
            },
          );
        },
        leading: icon,
        trailing: const FaIcon(FontAwesomeIcons.arrowRight),
        tileColor: color,
        mouseCursor: MouseCursor.uncontrolled,
        title: Badge(
          backgroundColor: Colors.red,
          label: Text(
            "1",
            style: context.badgeStyle(),
          ),
          child: Text(
            text1,
            style: context.hizliMenuTitleStyle(),
          ),
        ),
        subtitle: Text(
          text2,
          style: context.hizliMenuSubtitleStyle(),
        ),
      ),
    );
  }
}

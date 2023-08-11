import 'package:flutter/material.dart';
import 'extension.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


//iş seyehatında badge kullanıldığı için ayrı bir class oluşturuldu
class BadgeHizliMenu extends StatelessWidget {
  const BadgeHizliMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //color: Colors.red,
      width: context.sWidth * 0.95,
      height: context.sHeight * 0.15,
      child:Padding(
        padding: EdgeInsets.all(
          context.sWidth * 0.03,
        ),
        child: Badge(
          backgroundColor: Colors.red,
          label: Text(
            "1",
            style: context.badgeStyle(),
          ),
          child: ListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                  context.sWidth * 0.05),
            ),
            onTap: () {
              showModalBottomSheet<void>(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    height: context.sHeight,
                    color: const Color(0xFFFAEDCD),
                    child: Padding(
                      padding: EdgeInsets.all(
                          context.sWidth * 0.04),
                      child: Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children: <Widget>[
                          //hızlı menü iş seyehatıysa gerekli maddeleri içine doldur.
                          Column(
                            crossAxisAlignment:
                            CrossAxisAlignment
                                .start,
                            children: <Widget>[
                              Text(
                                'İş Seyehati giriş',
                                style: context
                                    .hizliMenuStyle(),
                              ),
                              context
                                  .emptyWidget(0.02),
                              Text(
                                'İş Seyehati görüntüleme',
                                style: context
                                    .hizliMenuStyle(),
                              ),
                              context
                                  .emptyWidget(0.02),
                              Badge(
                                backgroundColor:
                                const Color(
                                    0xFFFAEDCD),
                                label: Text(
                                  "1",
                                  style: context
                                      .badgeStyle(),
                                ),
                                child: Text(
                                  'İş Seyehati onaylama',
                                  style: context
                                      .hizliMenuStyle(),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
            leading: Text(
              "🛫",
              style: context.emojiStyle(),
            ),
            trailing: const FaIcon(
                FontAwesomeIcons.arrowRight),
            tileColor: const Color.fromRGBO(241, 192, 232, 0.38),
            mouseCursor: MouseCursor.uncontrolled,
            title: Text(
              "İş seyehatı",
              style: context.hizliMenuTitleStyle(),
            ),
            subtitle: Text(
              "Seyehatlarınızı planlayınız",
              style: context.hizliMenuSubtitleStyle(),
            ),
          ),
        ),
      ),
    );
  }
}
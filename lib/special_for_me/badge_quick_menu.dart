import 'package:flutter/material.dart';
import '../extension.dart';


//iş seyehatında badge kullanıldığı için ayrı bir class oluşturuldu
class BadgeQuickMenu extends StatelessWidget {
  const BadgeQuickMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //color: Colors.red,
      width: context.sWidth * 0.95,
      height: context.sHeight * 0.15,
      child: Padding(
        padding: EdgeInsets.all(
          context.sWidth * 0.03,
        ),
        child: Badge(
          //konumu ayarlandı
          offset: Offset(-context.sWidth * 0.01, -context.sHeight * 0.01),
          backgroundColor: Colors.red,
          label: Text(
            "1",
            style: context.badgeStyle(),
          ),
          child: ListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(context.sWidth * 0.05),
            ),
            onTap: () {
              showModalBottomSheet<void>(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    height: context.sHeight,
                    color: const Color(0xFFFAEDCD),
                    child: Padding(
                      padding: EdgeInsets.all(context.sWidth * 0.04),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          //hızlı menü iş seyehatıysa gerekli maddeleri içine doldur.
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: [
                                  Image.asset("assets/chevron_right.png"),
                                  Text(
                                    'İş Seyehati giriş',
                                    style: context.quickMenuStyle(),
                                  ),
                                ],
                              ),
                              context.emptyWidget(0.02),
                              Row(
                                children: [
                                  Image.asset("assets/chevron_right.png"),
                                  Text(
                                    'İş Seyehati görüntüleme',
                                    style: context.quickMenuStyle(),
                                  ),
                                ],
                              ),
                              context.emptyWidget(0.02),
                              Badge(
                                offset: Offset(-context.sWidth * 0.3,
                                    -context.sHeight * 0.01),
                                backgroundColor: const Color(0xFFFAEDCD),
                                label: Text(
                                  "1",
                                  style: context.badgeStyle(),
                                ),
                                child: Row(
                                  children: [
                                    Image.asset("assets/chevron_right.png"),
                                    Text(
                                      'İş Seyehati onaylama',
                                      style: context.quickMenuStyle(),
                                    ),
                                  ],
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
            trailing: Image.asset("assets/chevron_right.png"),
            tileColor: const Color.fromRGBO(241, 192, 232, 0.38),
            mouseCursor: MouseCursor.uncontrolled,
            title: Text(
              "İş seyehatı",
              style: context.quickMenuTitleStyle(),
            ),
            subtitle: Text(
              "Seyehatlarınızı planlayınız",
              style: context.quickMenuSubtitleStyle(),
            ),
          ),
        ),
      ),
    );
  }
}

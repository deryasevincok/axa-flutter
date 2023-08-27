import 'package:flutter/material.dart';
import '../../../special_for_me/permission.dart';
import '../../../extension.dart';
import '../../../special_for_me/quick_menu.dart';
import '../../../special_for_me/badge_quick_menu.dart';

class ForMe extends StatelessWidget {
  const ForMe({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Text(
              "İzin İşlemleri",
              style: context.permissionTitleStyle(),
            ),
          ),
          Row(
            children: [
              Permission(
                  color: Color(0xFFD5EEFD),
                  text1: "Kalan izin",
                  text2: "12",
                  emoji: "😃",
                  isActive: true),
              Permission(
                  color: Color(0xFFFDE4CF),
                  text1: "Kullanılan",
                  text2: "3",
                  emoji: "🥲",
                  isActive: true),
              Permission(
                  color: Color(0xFFF1C0E8),
                  text1: "Mazaret",
                  text2: "5",
                  emoji: "😃",
                  isActive: false),

            ],
          ),

          //BEYAZ EKRAN SORUNU HIZLI MENU textini KULLANMAYARAK GİDERİLDİ
          Padding(
            padding: EdgeInsets.only(top: context.sWidth * 0.1),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Hızlı Menü",
                    style: context.titleStyle(),
                  ),
                ),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          BadgeQuickMenu(),
                          QuickMenu(
                            color: Color(0xFFFDE4CF),
                            title: "İş Masrafları",
                            subtitle:
                            "İş ile ilgili masraflarınızı yönetiniz.",
                            emoji: "💸",
                          ),
                          QuickMenu(
                            color: Color(0xFFFBECED),
                            title: "Sağlık İşlemleri",
                            subtitle:
                            "Hastahane faturalarınızı yönetinizi.",
                            emoji: "🧑‍⚕️",
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          BadgeQuickMenu(),
                          QuickMenu(
                            color: Color(0xFFFDE4CF),
                            title: "İş Masrafları",
                            subtitle:
                            "İş ile ilgili masraflarınızı yönetiniz.",
                            emoji: "💸",
                          ),
                          QuickMenu(
                            color: Color(0xFFFBECED),
                            title: "Sağlık İşlemleri",
                            subtitle:
                            "Hastahane faturalarınızı yönetinizi.",
                            emoji: "🧑‍⚕️",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          context.emptyWidget(0.03),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.all(context.sHeight * 0.01),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Günün Yemeği",
                    style: context.titleStyle(),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(context.sHeight * 0.01),
                child: Container(
                  //margin: EdgeInsets.all(context.sWidth * 0.1),
                  decoration: BoxDecoration(
                      color: const Color(0xFFFF686B),
                      borderRadius: BorderRadius.circular(
                          context.sWidth * 0.05)),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(
                            context.sWidth * 0.03),
                        child: Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Pazartesi",
                              style: context
                                  .foodTitleStyle(),
                            ),
                            context.emptyWidget(0.02),
                            context.mealOfDayText(
                                "Yayla Çorbası"),
                            context.emptyWidget(0.001),
                            context.mealOfDayText(
                                "Soslu Tavuk Wrap"),
                            context.emptyWidget(0.001),
                            context.mealOfDayText(
                                "Patates kızartması"),
                            context.emptyWidget(0.001),
                            context.mealOfDayText("Salata"),
                          ],
                        ),
                      ),
                      Text(
                        "🍔",
                        style: context.hamburgerStyle(),
                      ),
                      //FaIcon(FontAwesomeIcons.hamburger),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(context.sHeight * 0.01),
                child: Container(
                  //margin: EdgeInsets.all(context.sWidth * 0.1),
                  decoration: BoxDecoration(
                      color: const Color(0xFFABC4FF),
                      borderRadius: BorderRadius.circular(
                          context.sWidth * 0.05)),
                  child: Padding(
                    padding:
                    EdgeInsets.all(context.sHeight * 0.035),
                    child: Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            context.emptyWidget(0.02),
                            context.ideaText("BİR"),
                            context.emptyWidget(0.001),
                            context.ideaText("FİKRİM"),
                            context.emptyWidget(0.001),
                            context.ideaText("VAR !"),
                          ],
                        ),
                        Text(
                          "🎯",
                          style: context.hamburgerStyle(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
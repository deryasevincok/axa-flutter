import 'package:axa_biz/hizli_menu.dart';
import 'package:flutter/material.dart';
import 'extension.dart';
import 'badge_hizli_menu.dart';
import 'duyuru.dart';
import 'izin_islemleri.dart';
import 'axa_alt_sayfa.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // tab sayısı
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "MERHABA",
                        style: Theme.of(context).textTheme.headlineLarge!.merge(
                              context.mainTitleStyle(),
                            ),
                      ),
                      Row(
                        children: [
                          Text(
                            "DERYA👋",
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge!
                                .merge(
                                  context.mainTitleStyle(),
                                ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  CircleAvatar(
                    radius: context.sWidth * 0.1,
                    backgroundImage: const AssetImage('assets/galata.jpg'),
                  ),
                ],
              ),
              TabBar(
                labelStyle: Theme.of(context).textTheme.headlineLarge!.merge(
                      context.selectedTabBarStyle(),
                    ),
                labelColor: Colors.black,
                indicatorColor: Colors.red,
                indicatorPadding: EdgeInsets.all(context.sWidth * 0.03),
                indicatorWeight: context.sWidth * 0.02,
                unselectedLabelStyle:
                    Theme.of(context).textTheme.headlineLarge!.merge(
                          context.unselectedTabBarStyle(),
                        ),
                unselectedLabelColor: Colors.grey,
                tabs: const [
                  Tab(
                    text: "Bana Özel",
                  ),
                  Tab(
                    text: "Axa'da Hayat",
                  ),
                  Tab(
                    text: "Uygulamalar",
                  )
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    //bana özele girince yapılacaklar
                    SingleChildScrollView(
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: Text(
                              "İzin İşlemleri",
                              style: context.izinIslemleriTitleStyle(),
                            ),
                          ),
                          Row(
                            children: [
                              IzinIslemleri(
                                const Color(0xFFD5EEFD),
                                "Kalan izin",
                                "12",
                                "😃",
                              ),
                              IzinIslemleri(
                                const Color(0xFFFDE4CF),
                                "Kullanılan",
                                "3",
                                "🥲",
                              ),
                              IzinIslemleri(
                                const Color(0xFFF1C0E8),
                                "Mazaret",
                                "",
                                "",
                              ),
                            ],
                          ),

                          //BEYAZ EKRAN SORUNU HIZLI MENU TEXTİNİ KULLANMAYARAK GİDERİLDİ
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
                                          BadgeHizliMenu(),
                                          HizliMenu(
                                            color: Color(0xFFFDE4CF),
                                            title: "İş Masrafları",
                                            subtitle:
                                                "İş ile ilgili masraflarınızı yönetiniz.",
                                            emoji: "💸",
                                          ),
                                          HizliMenu(
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
                                          BadgeHizliMenu(),
                                          HizliMenu(
                                            color: Color(0xFFFDE4CF),
                                            title: "İş Masrafları",
                                            subtitle:
                                                "İş ile ilgili masraflarınızı yönetiniz.",
                                            emoji: "💸",
                                          ),
                                          HizliMenu(
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
                                                  .gununYemegiTitleStyle(),
                                            ),
                                            context.emptyWidget(0.02),
                                            context.gununYemegiText(
                                                "Yayla Çorbası"),
                                            context.emptyWidget(0.001),
                                            context.gununYemegiText(
                                                "Soslu Tavuk Wrap"),
                                            context.emptyWidget(0.001),
                                            context.gununYemegiText(
                                                "Patates kızartması"),
                                            context.emptyWidget(0.001),
                                            context.gununYemegiText("Salata"),
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
                                            context.fikrimVarText("BİR"),
                                            context.emptyWidget(0.001),
                                            context.fikrimVarText("FİKRİM"),
                                            context.emptyWidget(0.001),
                                            context.fikrimVarText("VAR !"),
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
                    ),

                    Column(
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Duyuru(),
                              Duyuru(),
                              Duyuru(),
                            ],
                          ),
                        ),
                        context.emptyWidget(0.05),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            AxaAltSayfa(
                                Color.fromRGBO(204, 213, 174, 0.38), "Axa'da Hayat", "🏆"),
                            AxaAltSayfa(
                                Color.fromRGBO(233, 237, 201, 0.38), "İş sürekliliği", "🧑‍💻"),
                            AxaAltSayfa(
                                Color.fromRGBO(254, 250, 224, 0.38), "Başarı prensipleri", "🎖️"),
                          ],
                        ),
                        context.emptyWidget(0.04),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            AxaAltSayfa(Color.fromRGBO(250, 237, 205, 0.38), "Taahütler", "✍️"),
                            AxaAltSayfa(
                                Color.fromRGBO(212, 163, 115, 0.38), "Sadelik manifestosu", "🎨"),
                            AxaAltSayfa(Color.fromRGBO(212, 163, 115, 0.27), "Poliçeme duyarlıyım", "🎫"),
                          ],
                        )

                      ],
                    ),

                    const Center(
                        child: Text(
                      "Uygulamalar",
                      style: TextStyle(color: Colors.red),
                    ))

                    //axada hayata girince yapılacaklar
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

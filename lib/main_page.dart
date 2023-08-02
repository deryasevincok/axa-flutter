import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'extension.dart';
import 'hizli_menu.dart';
import 'duyuru.dart';
import 'izin_islemleri.dart';
import 'axa_alt_sayfa.dart';

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
                        style:
                            Theme.of(context).textTheme.headlineLarge!.merge(
                                  context.mainTitleStyle(),
                                ),
                      ),
                      Row(
                        children: [
                          Text(
                            "DERYA",
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge!
                                .merge(
                                  context.mainTitleStyle(),
                                ),
                          ),
                          const FaIcon(
                            FontAwesomeIcons.handshakeSimple,
                            color: Colors.lightBlue,
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
                indicatorColor: Colors.red,
                indicatorPadding: EdgeInsets.all(context.sWidth * 0.03),
                indicatorWeight: context.sWidth * 0.02,
                labelColor: Colors.black,
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
                            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IzinIslemleri(
                                const Color(0xFFD5EEFD),
                                "Kalan izin",
                                "12",
                                const FaIcon(
                                  FontAwesomeIcons.faceSmile,
                                  color: Colors.lightBlue,
                                ),
                              ),
                              IzinIslemleri(
                                const Color(0xFFFDE4CF),
                                "Kullanılan",
                                "3",
                                const FaIcon(FontAwesomeIcons.faceSadCry,
                                    color: Colors.lightBlue),
                              ),
                              IzinIslemleri(
                                const Color(0xFFF1C0E8),
                                "Mazaret",
                                "0",
                                const FaIcon(FontAwesomeIcons.faceLaugh,
                                    color: Colors.lightBlue),
                              ),
                            ],
                          ),
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
                                HizliMenu(
                                    const Color(0xFFF1C0E8),
                                    "İş seyehatı",
                                    "Seyehatlarınız planlayınız.",
                                    const FaIcon(
                                        FontAwesomeIcons.planeDeparture)),
                                HizliMenu(
                                    const Color(0xFFFDE4CF),
                                    "İş masrafları",
                                    "İş işle ilgili masraflarınızı yönetiniz.",
                                    const FaIcon(
                                        FontAwesomeIcons.moneyCheckDollar)),
                                HizliMenu(
                                    const Color(0xFFFBECED),
                                    "Sağlık İşlemleri",
                                    "Hastahane faturalarını yönetiniz.",
                                    const FaIcon(
                                        FontAwesomeIcons.peopleRobbery)),
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
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(
                                          context.sWidth * 0.05)),
                                  child: Row(
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
                                              style: context.gununYemegiTitleStyle(),
                                            ),
                                            context.emptyWidget(0.02),
                                            Text(
                                              "Yayla çorbası",
                                              style: context.gununYemegiTextStyle(),
                                            ),
                                            context.emptyWidget(0.001),
                                            Text(
                                              "Soslu Tavuk Wrap",
                                              style: context.gununYemegiTextStyle(),
                                            ),
                                            context.emptyWidget(0.001),
                                            Text(
                                              "Patates kızartması",
                                              style: context.gununYemegiTextStyle(),
                                            ),
                                            context.emptyWidget(0.001),
                                            Text(
                                              "Salata",
                                              style: context.gununYemegiTextStyle(),
                                            ),
                                          ],
                                        ),
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
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(
                                          context.sWidth * 0.05)),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(
                                            context.sWidth * 0.03),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            context.emptyWidget(0.02),
                                            Text(
                                              "BİR",
                                              style: context.gununYemegiTitleStyle(),
                                            ),
                                            context.emptyWidget(0.001),
                                            Text(
                                              "FİKRİM",
                                              style: context.gununYemegiTextStyle(),
                                            ),
                                            context.emptyWidget(0.001),
                                            Text(
                                              "VAR ! ",
                                              style: context.gununYemegiTextStyle(),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
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
                            ],
                          ),
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            AxaAltSayfa(Color(0xFFCCD5AE), "Axa'da Hayat"),
                            AxaAltSayfa(Color(0xFFE9EDC9), "İş sürekliliği"),
                            AxaAltSayfa(
                                Color(0xFFFEFAE0), "Başarı prensipleri"),
                          ],
                        ),
                        context.emptyWidget(0.02),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            AxaAltSayfa(Color(0xFFFAEDCD), "Taahütler"),
                            AxaAltSayfa(
                                Color(0xFFD4A373), "Sadelik manifestosu"),
                            AxaAltSayfa(Color(0xFFD4A373), "Poliçeme "),
                          ],
                        )
                      ],
                    )

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



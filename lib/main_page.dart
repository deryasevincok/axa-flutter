import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'extension.dart';
import 'hizli_menu.dart';
import 'duyuru.dart';
import 'izin_islemleri.dart';
import 'axa_alt_sayfa.dart';
import 'package:flutter_emoji/flutter_emoji.dart';

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
                          /*const FaIcon(
                            FontAwesomeIcons.handshakeSimple,
                            color: Colors.lightBlue,
                          ),*/
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
                              //TODO İZİN İŞLEMLERİ KISMI KAYDIRILABİLİR OLMALI
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
                                //TODO SADECE İŞ SEYEHATİNİN ÜSTÜNDE SAYI OLMALI
                                HizliMenu(
                                    const Color(0xFFF1C0E8),
                                    "İş seyehatı",
                                    "Seyehatlarınız planlayınız.",
                                    "🛫"),
                                HizliMenu(
                                  const Color(0xFFFDE4CF),
                                  "İş masrafları",
                                  "İş işle ilgili masraflarınızı yönetiniz.",
                                  "💸",
                                ),
                                HizliMenu(
                                    const Color(0xFFFBECED),
                                    "Sağlık İşlemleri",
                                    "Hastahane faturalarını yönetiniz.",
                                    "🧑‍⚕"),
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
                                            Text(
                                              "Yayla çorbası",
                                              style: context
                                                  .gununYemegiTextStyle(),
                                            ),
                                            context.emptyWidget(0.001),
                                            Text(
                                              "Soslu Tavuk Wrap",
                                              style: context
                                                  .gununYemegiTextStyle(),
                                            ),
                                            context.emptyWidget(0.001),
                                            Text(
                                              "Patates kızartması",
                                              style: context
                                                  .gununYemegiTextStyle(),
                                            ),
                                            context.emptyWidget(0.001),
                                            Text(
                                              "Salata",
                                              style: context
                                                  .gununYemegiTextStyle(),
                                            ),
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
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(
                                          context.sWidth * 0.05)),
                                  child: Padding(
                                    padding: EdgeInsets.all(context.sHeight * 0.035),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            context.emptyWidget(0.02),
                                            Text(
                                              "BİR",
                                              style: context
                                                  .fikrimVarTextStyle(),
                                            ),
                                            context.emptyWidget(0.001),
                                            Text(
                                              "FİKRİM",
                                              style: context
                                                  .fikrimVarTextStyle(),
                                            ),
                                            context.emptyWidget(0.001),
                                            Text(
                                              "VAR ! ",
                                              style: context
                                                  .fikrimVarTextStyle(),
                                            ),
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
                              //TODO BOYUT KÜÇÜLSÜN
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
                    ),
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

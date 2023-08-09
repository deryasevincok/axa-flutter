import 'package:flutter/material.dart';
import 'extension.dart';
//import 'hizli_menu.dart';
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
                          //TODO BEYAZ EKRAN

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
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      Column(
                                        children: [
                                         SizedBox(
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
                                                  tileColor: const Color(0xF1C0E861),
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
                                          ),
                                          SizedBox(
                                            //color: Colors.orange,
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
                                                  "🧑‍⚕️",
                                                  style: context.emojiStyle(),
                                                ),
                                                trailing: const FaIcon(
                                                    FontAwesomeIcons.arrowRight),
                                                tileColor: const Color(0xFFFBECED),
                                                mouseCursor: MouseCursor.uncontrolled,
                                                title: Text(
                                                  "Sağlık İşlemleri",
                                                  style: context.hizliMenuTitleStyle(),
                                                ),
                                                subtitle: Text(
                                                  "Hastahane faturalarınızı yönetinizi.",
                                                  style: context.hizliMenuSubtitleStyle(),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            //color: Colors.orange,
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
                                                  "💸",
                                                  style: context.emojiStyle(),
                                                ),
                                                trailing: const FaIcon(
                                                    FontAwesomeIcons.arrowRight),
                                                tileColor: const Color(0xFFFDE4CF),
                                                mouseCursor: MouseCursor.uncontrolled,
                                                title: Text(
                                                  "İş Masrafları",
                                                  style: context.hizliMenuTitleStyle(),
                                                ),
                                                subtitle: Text(
                                                  "İş ile ilgili masraflarınızı yönetiniz.",
                                                  style: context.hizliMenuSubtitleStyle(),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          SizedBox(
                                            //color: Colors.red,
                                            width: context.sWidth,
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
                                                  tileColor: const Color(0xF1C0E861),
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
                                          ),
                                          SizedBox(
                                            //color: Colors.orange,
                                            width: context.sWidth,
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
                                                  "🧑‍⚕️",
                                                  style: context.emojiStyle(),
                                                ),
                                                trailing: const FaIcon(
                                                    FontAwesomeIcons.arrowRight),
                                                tileColor: const Color(0xFFFBECED),
                                                mouseCursor: MouseCursor.uncontrolled,
                                                title: Text(
                                                  "Sağlık İşlemleri",
                                                  style: context.hizliMenuTitleStyle(),
                                                ),
                                                subtitle: Text(
                                                  "Hastahane faturalarınızı yönetinizi.",
                                                  style: context.hizliMenuSubtitleStyle(),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            //color: Colors.orange,
                                            width: context.sWidth,
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
                                                  "💸",
                                                  style: context.emojiStyle(),
                                                ),
                                                trailing: const FaIcon(
                                                    FontAwesomeIcons.arrowRight),
                                                tileColor: const Color(0xFFFDE4CF),
                                                mouseCursor: MouseCursor.uncontrolled,
                                                title: Text(
                                                  "İş Masrafları",
                                                  style: context.hizliMenuTitleStyle(),
                                                ),
                                                subtitle: Text(
                                                  "İş ile ilgili masraflarınızı yönetiniz.",
                                                  style: context.hizliMenuSubtitleStyle(),
                                                ),
                                              ),
                                            ),
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
                                            Text(
                                              "BİR",
                                              style:
                                                  context.fikrimVarTextStyle(),
                                            ),
                                            context.emptyWidget(0.001),
                                            Text(
                                              "FİKRİM",
                                              style:
                                                  context.fikrimVarTextStyle(),
                                            ),
                                            context.emptyWidget(0.001),
                                            Text(
                                              "VAR ! ",
                                              style:
                                                  context.fikrimVarTextStyle(),
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
                              Duyuru(),
                              Duyuru(),
                              Duyuru(),
                            ],
                          ),
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            AxaAltSayfa(
                                Color(0xFFCCD5AE), "Axa'da Hayat", "🏆"),
                            AxaAltSayfa(
                                Color(0xFFE9EDC9), "İş sürekliliği", "🧑‍💻"),
                            AxaAltSayfa(
                                Color(0xFFFEFAE0), "Başarı prensipleri", "🎖️"),
                          ],
                        ),
                        context.emptyWidget(0.02),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            AxaAltSayfa(Color(0xFFFAEDCD), "Taahütler", "✍️"),
                            AxaAltSayfa(
                                Color(0xFFD4A373), "Sadelik manifestosu", "🎨"),
                            AxaAltSayfa(Color(0xFFD4A373), "Poliçeme ", "🎫"),
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

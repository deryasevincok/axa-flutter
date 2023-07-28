import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'extension.dart';
import 'const.dart';

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
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "MERHABA",
                          style:
                              Theme.of(context).textTheme.headlineLarge!.merge(
                                    TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                      fontSize: context.sWidth * 0.1,
                                    ),
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
                                    TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                      fontSize: context.sWidth * 0.1,
                                    ),
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
                      backgroundImage: AssetImage('assets/galata.jpg'),
                    ),
                  ],
                ),
              ),
              const TabBar(
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                tabs: [
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
                      child: Container(
                        child: Column(
                          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Align(
                              alignment: Alignment.topRight,
                              child: Text(
                                "İzin İşlemleri",
                                style: TextStyle(
                                    fontSize: context.sWidth * 0.05,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline),
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
                                  "10",
                                  const FaIcon(FontAwesomeIcons.faceSadCry,
                                      color: Colors.lightBlue),
                                ),
                                IzinIslemleri(
                                  const Color(0xFFF1C0E8),
                                  "Mazaret",
                                  "10",
                                  const FaIcon(FontAwesomeIcons.faceLaugh,
                                      color: Colors.lightBlue),
                                ),
                              ],
                            ),
                            //TODO BADGE KULLAN
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 40.0),
                                child: Column(
                                  children: [
                                    const Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "Hızlı Menü",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 30.0),
                                      ),
                                    ),
                                    HizliMenu(
                                        const Color.fromRGBO(
                                            241, 192, 232, 0.38),
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
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.all(context.sHeight * 0.03),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "Günün Yemeği",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: context.sHeight * 0.03),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.all(context.sHeight * 0.01),
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
                                                style: TextStyle(
                                                    fontSize:
                                                        context.sWidth * 0.05,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                              context.emptyWidget(0.02),
                                              Text(
                                                "Yayla çorbası",
                                                style: TextStyle(
                                                    fontFamily: 'Jost',
                                                    fontSize:
                                                        context.sWidth * 0.05),
                                              ),
                                              context.emptyWidget(0.001),
                                              Text(
                                                "Soslu Tavuk Wrap",
                                                style: TextStyle(
                                                    fontFamily: 'Jost',
                                                    fontSize:
                                                        context.sWidth * 0.05),
                                              ),
                                              context.emptyWidget(0.001),
                                              Text(
                                                "Patates kızartması",
                                                style: TextStyle(
                                                    fontFamily: 'Jost',
                                                    fontSize:
                                                        context.sWidth * 0.05),
                                              ),
                                              context.emptyWidget(0.001),
                                              Text(
                                                "Salata",
                                                style: TextStyle(
                                                    fontFamily: 'Jost',
                                                    fontSize:
                                                        context.sWidth * 0.05),
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
                                  padding:
                                      EdgeInsets.all(context.sHeight * 0.01),
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
                                                style: TextStyle(
                                                    fontFamily: 'Jost',
                                                    fontSize:
                                                        context.sWidth * 0.05,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                              context.emptyWidget(0.001),
                                              Text(
                                                "FİKRİM",
                                                style: TextStyle(
                                                    fontFamily: 'Jost',
                                                    fontSize:
                                                        context.sWidth * 0.05,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                              context.emptyWidget(0.001),
                                              Text(
                                                "VAR ! ",
                                                style: TextStyle(
                                                    fontFamily: 'Jost',
                                                    fontSize:
                                                        context.sWidth * 0.05,
                                                    fontWeight:
                                                        FontWeight.w700),
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
                    ),

                    //axada hayata girince yapılacaklar
                    const Center(
                      child: Text(
                        "Axa'da Hayat",
                        style: TextStyle(
                          color: Colors.purple,
                        ),
                      ),
                    ),

                    //uygulamalara girince yapılacaklar
                    const Center(
                      child: Text(
                        "Uygulamalar",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
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

class IzinIslemleri extends StatelessWidget {
  final Color color;
  final String text1;
  final String text2;
  final FaIcon icon;

  IzinIslemleri(this.color, this.text1, this.text2, this.icon);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(
            context.sWidth * 0.02,
          ), // Set the border radius
        ),
        margin: EdgeInsetsDirectional.all(
          context.sWidth * 0.04,
        ),
        child: Column(
          children: [
            icon,
            Text(
              text1,
              style: const TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Text(
              text2,
              style: const TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

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
                      if (text1 == "İş seyehatı")  //hızlı menü iş seyehatıysa gerekli maddeleri içine doldur.
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'İş Seyehati giriş',
                              style: hizliMenuStil,
                            ),
                            context.emptyWidget(0.02),
                            Text(
                              'İş Seyehati görüntüleme',
                              style: hizliMenuStil,
                            ),
                            context.emptyWidget(0.02),
                            Badge(
                              backgroundColor: Colors.amber,
                              label: Text(
                                "1",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              child: Text(
                                'İş Seyehati onaylama',
                                style: hizliMenuStil,
                              ),
                            ),
                          ],
                        ),
                    ],
                  )
                ),
              );
            },
          );
        },
        leading: icon,
        trailing: const FaIcon(FontAwesomeIcons.arrowRight),
        tileColor: color,
        mouseCursor: MouseCursor.uncontrolled,
        title:
        Badge(
          backgroundColor: Colors.amber,
          label: Text(
            "1",
            style: TextStyle(
              color: Colors.black,
              fontSize: 15.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          child: Text(
            text1,
            style:
                TextStyle(color: Colors.black, fontSize: context.sHeight * 0.03),
          ),
        ),
        subtitle: Text(
          text2,
          style:
              TextStyle(color: Colors.black, fontSize: context.sHeight * 0.02),
        ),
      ),
    );
  }
}

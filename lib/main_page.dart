import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'extension.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  //badge

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
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: context.sWidth * 0.10,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "DERYA",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: context.sWidth * 0.10,
                              ),
                            ),
                            FaIcon(
                              FontAwesomeIcons.handshakeSimple,
                              color: Colors.lightBlue,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const CircleAvatar(
                      radius: 50.0,
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
                                  Color(0xFFD5EEFD),
                                  "Kalan izin",
                                  "12",
                                  const FaIcon(
                                    FontAwesomeIcons.faceSmile,
                                    color: Colors.blue,
                                  ),
                                ),
                                IzinIslemleri(
                                  const Color(0xFFFDE4CF),
                                  "Kullanılan",
                                  "10",
                                  FaIcon(FontAwesomeIcons.faceSadCry,
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
                                            color: Colors.black, fontSize: 30.0),
                                      ),
                                    ),
                                    HizliMenu(
                                        Color.fromRGBO(241, 192, 232, 0.38),
                                        "İş seyehatı",
                                        "Seyehatlarınız planlayınız.",
                                        FaIcon(FontAwesomeIcons.planeDeparture)),
                                    HizliMenu(
                                        Color(0xFFFDE4CF),
                                        "İş masrafları",
                                        "İş işle ilgili masraflarınızı yönetiniz.",
                                        const FaIcon(
                                            FontAwesomeIcons.moneyCheckDollar)),
                                    HizliMenu(
                                        const Color(0xFFFBECED),
                                        "Sağlık İşlemleri",
                                        "Hastahane faturalarını yönetiniz.",
                                        FaIcon(FontAwesomeIcons.peopleRobbery)),
                                  ],
                                ),
                              ),
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(context.sHeight * 0.03),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "Günün Yemeği",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: context.sHeight * 0.03
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(context.sHeight * 0.01),
                                  child: Container(
                                    color: Colors.red,
                                    child: const Row(
                                      children: [
                                        Column(
                                          children: [
                                            //TODO SizedBox değil extension kullanılacak.
                                            Text("Pazartesi",style: TextStyle(color: Colors.purple),),
                                            SizedBox(height: 10.0),
                                            Text("Yayla çorbası"),
                                            SizedBox(height: 5.0),
                                            Text("Soslu Tavuk Wrap"),
                                            SizedBox(height: 5.0),
                                            Text("Patates kızartması"),
                                            SizedBox(height: 5.0),
                                            Text("Salata"),
                                          ],
                                        ),

                                      ],
                                    ),
                                  ),
                                )
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
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Text(
              text2,
              style:
                  const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
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
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const Text('Modal BottomSheet'),
                      ElevatedButton(
                        child: const Text('Close BottomSheet'),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
        leading: icon,
        trailing: const FaIcon(FontAwesomeIcons.arrowRight),
        tileColor: color,
        mouseCursor: MouseCursor.uncontrolled,
        title: Text(
          text1,
          style:
              TextStyle(color: Colors.black, fontSize: context.sHeight * 0.03),
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

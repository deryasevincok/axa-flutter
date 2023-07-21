import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
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
                            fontSize: 32,
                            fontFamily: 'Pacifico',
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "DERYA",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 32,
                              ),
                            ),
                            Icon(
                              Icons.abc_outlined,
                              color: Colors.yellow,
                            ),
                          ],
                        ),
                      ],
                    ),
                    CircleAvatar(
                      radius: 50.0,
                      backgroundImage: AssetImage('assets/galata.jpg'),
                    ),
                  ],
                ),
              ),
              TabBar(
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
                    Container(
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: Text(
                              "İzin İşlemleri",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(
                                        10.0), // Set the border radius
                                  ),
                                  margin: EdgeInsetsDirectional.all(5.0),
                                  child: Column(
                                    children: [
                                      Icon(Icons.add_box_sharp),
                                      Text(
                                        "Kalan izin",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "12",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.yellowAccent,
                                    borderRadius: BorderRadius.circular(
                                        10.0), // Set the border radius
                                  ),
                                  margin: EdgeInsetsDirectional.all(5.0),
                                  child: Column(
                                    children: [
                                      Icon(Icons.add_box_sharp),
                                      Text(
                                        "Kullanılan",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "3",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.purple,
                                    borderRadius: BorderRadius.circular(
                                        10.0), // Set the border radius
                                  ),
                                  margin: EdgeInsetsDirectional.all(5.0),
                                  child: Column(
                                    children: [
                                      Icon(Icons.add_box_sharp),
                                      Text(
                                        "Mazaret",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "10",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Hızlı Menü",
                                    style: TextStyle(color: Colors.black,fontSize: 30.0),
                                  ),
                                ),
                                HizliMenu(Colors.red,"İş seyehatı","Seyehatlarınız planlayınız."),
                                HizliMenu(Colors.orangeAccent,"İş masrafları","İş işle ilgili masraflarınızı yönetiniz."),
                                HizliMenu(Colors.pinkAccent,"Sağlık İşlemleri","Hastahane faturalarını yönetiniz."),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    //axada hayata girince yapılacaklar
                    Center(
                      child: Text(
                        "Axa'da Hayat",
                        style: TextStyle(
                          color: Colors.purple,
                        ),
                      ),
                    ),

                    //uygulamalara girince yapılacaklar
                    Center(
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

class HizliMenu extends StatelessWidget {

  final Color color;
  final String text1;
  final String text2;

  HizliMenu(this.color,this.text1,this.text2);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListTile(
        onTap:(){
          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return Container(
                height: 200,
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
        } ,
        trailing: Icon(Icons.add),
        tileColor: color,
        mouseCursor: MouseCursor.uncontrolled,
        leading: Icon(Icons.add),
        title: Text(
          text1,
          style: TextStyle(color: Colors.black),
        ),
        subtitle: Text(
          text2,
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../../extension.dart';
import 'package:axa_biz/pages/main_page/tab_bars/for_me.dart';
import 'package:axa_biz/pages/main_page/tab_bars/axa_life.dart';

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
              Padding(
                padding: EdgeInsets.all(context.sWidth * 0.03),
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
                                    context.mainTitleStyle(),
                                  ),
                        ),
                        Row(
                          children: [
                            Text(
                              "OZAN👋",
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
                      backgroundImage:
                          const AssetImage('assets/bahadir_kalay.jpg'),
                    ),
                  ],
                ),
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
                unselectedLabelColor: Colors.black,
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
              context.emptyWidget(0.02),
              const Expanded(
                child: TabBarView(
                  //todo tabbar ayır
                  children: [
                    //bana özele girince yapılacaklar
                    ForMe(),
                    AxaLife(),
                    Center(
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





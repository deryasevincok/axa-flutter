import 'package:axa_biz/Credentials.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../extension.dart';
import 'package:axa_biz/pages/main_page/tab_bars/for_me.dart';
import 'package:axa_biz/pages/main_page/tab_bars/axa_life.dart';
import '../../view_model.dart';
import 'tab_bars/applications.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  /*final String? firstName;

  const MainPage({super.key, required this.firstName});*/

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<ViewModel>(context);
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
                              '${viewModel.username}👋',
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
                  children: [
                    ForMe(), //bana özel sekmesinde yapılacaklar
                    AxaLife(), //axa'da hayat sekmesinde yapılacaklar
                    Applications(),  //Uygulamalar sekmesinde yapılacaklar
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



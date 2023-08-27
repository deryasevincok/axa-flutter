import 'package:flutter/material.dart';
import '../extension.dart';

class Announcement extends StatelessWidget {
  const Announcement({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(context.sWidth * 0.04),
      width: context.sWidth * 0.92,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFFA5FFD6),
              borderRadius: BorderRadius.circular(
                context.sWidth * 0.02,
              ), // Set the border radius
            ),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(context.sWidth * 0.02),
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Doğum günün",
                        style: context.announcementStyle(),
                      ),
                      Text(
                        "Kutlu olsun",
                        style: context.announcementStyle(),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: context.sHeight * 0.02),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: context.sWidth * 0.07,
                        backgroundImage: const AssetImage('assets/bahadir_kalay.jpg'),
                      ),
                      Padding(
                        padding: EdgeInsets.all(context.sWidth * 0.02),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Recep",
                              style: context.announcementNameStyle(),
                            ),
                            Text(
                              "Öztürk",
                              style: context.announcementNameStyle(),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

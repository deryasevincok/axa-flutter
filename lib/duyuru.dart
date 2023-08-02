import 'package:flutter/material.dart';
import 'extension.dart';


class Duyuru extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(context.sWidth * 0.04),
      width: context.sWidth,
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
                        style: TextStyle(
                            fontSize: context.sWidth * 0.08,
                            color: Colors.black,fontFamily: 'Jost',
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Kutlu olsun",
                        style: TextStyle(
                            fontSize: context.sWidth * 0.08,
                            color: Colors.black,fontFamily: 'Jost',fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: context.sWidth * 0.08,
                      backgroundImage:
                      AssetImage('assets/galata.jpg'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(context.sWidth * 0.02),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Derya",style: TextStyle(fontSize: context.sWidth * 0.06,
                              color: Colors.black,fontFamily: 'Jost',
                              fontWeight: FontWeight.w500),),
                          Text("Sevinçok",style: TextStyle(fontSize: context.sWidth * 0.06,
                              color: Colors.black,fontFamily: 'Jost',
                              fontWeight: FontWeight.w500),),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
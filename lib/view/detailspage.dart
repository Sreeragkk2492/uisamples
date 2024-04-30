import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uisamples/mode/bags.dart';
import 'package:uisamples/view/utils/appcolors.dart';

class Detailspage extends StatelessWidget {
  Bags item;

  int index = 0;
  Detailspage({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: item.bgcolor,
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
          // statusBarColor: Appcolor.iconcolor
        ),
        backgroundColor: item.bgcolor,
        leadingWidth: 80,
        leading: Container(
          margin: EdgeInsets.only(
            left: 20,
          ),
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadius.circular(30)),
          child: Center(
            child: Icon(
              FontAwesomeIcons.angleLeft,
              color: Appcolor.secondarytextcolor,
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Positioned(
              top: 20,
              left: 30,
              child: Text(
                item.title,
                style:
                    TextStyle(fontSize: 24, color: Appcolor.secondarytextcolor),
              )),
          Positioned(
              top: 50,
              left: 30,
              child: Text(
                item.discription,
                style:
                    TextStyle(fontSize: 16, color: Appcolor.secondarytextcolor),
              )),
          Positioned(
              top: 160,
              left: -80,
              child: Container(
                width: 260,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Text(
                    '\$ 120.00',
                    style: TextStyle(
                        fontSize: 24, color: Appcolor.secondarytextcolor),
                  ),
                ),
              )),
       
          Positioned(
            top: 260,
            left: 30,
            child: Container(
              width: 50,
              height: 50,
              // margin: EdgeInsets.only(
              //   left: 20,
              // ),
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(50)),
              child: Center(
                child: Icon(
                  FontAwesomeIcons.plus,
                  color: Appcolor.secondarytextcolor,
                ),
              ),
            ),
          ),
          Positioned(
              top: 340,
              left: 50,
              child: Text(
                '0',
                style:
                    TextStyle(fontSize: 24, color: Appcolor.secondarytextcolor),
              )),
          Positioned(
            top: 390,
            left: 30,
            child: Container(
              width: 50,
              height: 50,
              
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(50)),
              child: Center(
                child: Icon(
                  FontAwesomeIcons.minus,
                  color: Appcolor.secondarytextcolor,
                ),
              ),
            ),
          ),
          Positioned(
              // top: 160,
              bottom: 30,
              left: 6,
              child: Container(
                width: 380,
                height: 70,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(30)),
              )),
          Positioned(
            bottom: 35,
            left: 12,
            child: Container(
              width: 80,
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              child: Icon(FontAwesomeIcons.angleRight),
            ),
          ),
          Positioned(
              bottom: 52,
              left: 140,
              child: Text(
                'Buy product',
                style:
                    TextStyle(fontSize: 18, color: Appcolor.secondarytextcolor),
              )),
          Positioned(
              bottom: 55,
              left: 310,
              child: Icon(
                FontAwesomeIcons.anglesRight,
                size: 18,
                color: Appcolor.secondarytextcolor,
              ))
        ],
      ),
    );
  }
}

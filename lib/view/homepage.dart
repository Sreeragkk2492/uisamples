import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uisamples/view/utils/appcolors.dart';
import 'package:uisamples/view/widget/caorusel.dart';
import 'package:uisamples/view/widget/sliverappbar.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverappBar(),
        SliverToBoxAdapter(
          child: Column(
            children: [
              Stack(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage(
                              'assets/home/Ads1.png',
                            ),
                            fit: BoxFit.cover)),
                  ),
                ),
                Positioned(
                    left: 30,
                    top: 20,
                    child: Text(
                      '20%',
                      style: TextStyle(
                          fontSize: 56,
                          fontWeight: FontWeight.bold,
                          color: Appcolor.secondarytextcolor),
                    )),
                Positioned(
                    top: 50,
                    left: 140,
                    child: Text(
                      'off',
                      style: TextStyle(
                          fontSize: 26, color: Appcolor.secondarytextcolor),
                    )),
                Positioned(
                    left: 30,
                    top: 80,
                    child: Text(
                      'on your first purchase',
                      style: TextStyle(
                          fontSize: 15, color: Appcolor.secondarytextcolor),
                    )),
                Positioned(
                    top: 130,
                    left: 30,
                    child: DottedBorder(
                        color: Colors.white,
                        dashPattern: [8],
                        strokeWidth: 1,
                        child: Container(
                          height: 30,
                          width: 145,
                          child: Center(
                              child: Text(
                            'Use Code:FIRSTORDER',
                            style: TextStyle(
                                fontSize: 11,
                                color: Appcolor.secondarytextcolor),
                          )),
                        )))
              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'New Arrivals',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        FontAwesomeIcons.ellipsisVertical,
                        color: Appcolor.unselectediconcolor,
                      ))
                ],
              ),
              Carousel()
            ],
          ),
        ),
      ],
    );
  }
}

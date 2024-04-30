import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uisamples/view/utils/appcolors.dart';
import 'package:uisamples/view/widget/caorusel.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          leadingWidth: 73,
          backgroundColor: Appcolor.bottombarcolor,
          expandedHeight: 80,
          leading: Container(
            margin: EdgeInsets.only(left: 20),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30)),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  FontAwesomeIcons.bars,
                  size: 16,
                  color: Appcolor.iconcolor,
                )),
          ),
          title: Text(
            'HOME',
            style: TextStyle(
                color: Color.fromARGB(255, 1, 57, 105),
                fontSize: 23,
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          actions: [
            Container(
              margin: EdgeInsets.only(right: 10),
              height: 80,
              width: 60,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(40)),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    FontAwesomeIcons.bell,
                    size: 16,
                    color: Appcolor.iconcolor,
                  )),
            ),
            SizedBox(
              width: 10,
            )
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(80),
            child: ListTile(
              minLeadingWidth: 60.0,
              tileColor: Appcolor.bottombarcolor,
              leading: Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 50,
                    width: 50,
                    margin: EdgeInsets.only(left: 4),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/home/t1.jpg'),
                            fit: BoxFit.cover),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    // child: IconButton(
                    //     onPressed: () {},
                    //     icon: Icon(
                    //       FontAwesomeIcons.bell,
                    //       size: 16,
                    //       color: Appcolor.iconcolor,
                    //     )),
                  ),
                ),
              ),
              title: Text(
                'Hello Sreerag',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Appcolor.primarytextcolor),
              ),
              subtitle: Text('View profile'),
              trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    FontAwesomeIcons.arrowRight,
                    color: Appcolor.secondaryiconcolor,
                  )),
            ),
          ),
        ),
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
                            image: AssetImage('assets/home/Ads1.png',),
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

  // List<Image> carouselimages = [
  //   Image.asset('assets/home/lbag1.jpg'),
  //   Image.asset('assets/home/lbag2.jpg'),
  //   Image.asset('assets/home/lbag3.jpg')
  // ];
}

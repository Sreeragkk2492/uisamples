import 'package:carousel_slider/carousel_slider.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uisamples/view/utils/appcolors.dart';
import 'package:uisamples/view/widget/caorusel.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.bottombarcolor,
      //  appBar: AppBar(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Appcolor.bottombarcolor,
            expandedHeight: 80,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      FontAwesomeIcons.bars,
                      size: 16,
                      color: Appcolor.iconcolor,
                    )),
              ),
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
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
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
              child: Padding(
                padding: const EdgeInsets.all(08.0),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  tileColor: Appcolor.bottombarcolor,
                  leading: Container(
                    height: 40,
                    width: 40,
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
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Stack(children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage('assets/home/Ads1.png'),
                          fit: BoxFit.cover)),
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
            ),
          ),
          SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'New Arrivals',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
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
          ),
          SliverToBoxAdapter(
            // child: CarouselSlider.builder(
            //     itemCount: carouselimages.length,
            //     itemBuilder: (BuildContext context, int index, realindex) =>
            //         Container(
            //           decoration: BoxDecoration(
            //               image: DecorationImage(
            //                   image:
            //                       AssetImage(carouselimages[index].toString()),
            //                   fit: BoxFit.cover)),
            //         ),
            //     options: CarouselOptions(
            //       pageSnapping: true,
            //       aspectRatio: 16 / 9,
            //       viewportFraction: 1,
            //       enableInfiniteScroll: true,
            //       autoPlay: true,
            //     )),
            child: Carousel(), 
          )
        ],
      ),
    );
  }

  // List<Image> carouselimages = [
  //   Image.asset('assets/home/lbag1.jpg'),
  //   Image.asset('assets/home/lbag2.jpg'),
  //   Image.asset('assets/home/lbag3.jpg')
  // ];
}

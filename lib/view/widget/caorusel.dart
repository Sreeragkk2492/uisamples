import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uisamples/mode/bags.dart';
import 'package:uisamples/view/detailspage.dart';
import 'package:uisamples/view/utils/appcolors.dart';

class Carousel extends StatelessWidget {
  Carousel({super.key});

  List<Bags> items = [
    Bags(
        imageurl: 'assets/home/lbag1.jpg',
        title: 'Leather Bag',
        discription: 'Classic eleganace: your everyday companion',
        bgcolor: Color.fromARGB(255, 83, 204, 235)),
        
    Bags(
        imageurl: 'assets/home/lbag2.jpg',
        title: 'Leather Bag',
        discription: 'Classic eleganace: your everyday companion',
        bgcolor: const Color.fromARGB(255, 180, 47, 37)),
    Bags(
        imageurl: 'assets/home/lbag3.jpg',
        bgcolor: const Color.fromARGB(255, 126, 50, 44),
        title: 'Leather Bag',
        discription: 'Classic eleganace: your everyday companion')
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          CarouselSlider.builder(
              itemCount: items.length,
              itemBuilder: (context, int index, int i) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Detailspage(item: Bags(imageurl: items[index].imageurl, title: items[index].title, discription: items[index].discription,bgcolor: items[index].bgcolor))));
                  },
                  child: Container(
                    height: 200,
                    // width: ,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(items[index].imageurl),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                );
              },
              options: CarouselOptions(
                  pageSnapping: true,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.6,
                  enableInfiniteScroll: true,
                  autoPlay: true,
                  enlargeCenterPage: true))
        ]);
  }
}

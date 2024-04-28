import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousel extends StatelessWidget {
   Carousel({super.key});

  @override
  Widget build(BuildContext context) {
    return  CarouselSlider.builder(
                itemCount: carouselimages.length,
                itemBuilder: (BuildContext context, int index, realindex) =>
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage(carouselimages[index].toString()),
                              fit: BoxFit.cover)),
                    ),
                options: CarouselOptions(
                  pageSnapping: true,
                  aspectRatio: 16 / 9,
                  viewportFraction: 1,
                  enableInfiniteScroll: true,
                  autoPlay: true,
                ));
  }
   List<Image> carouselimages = [
    Image.asset('assets/home/lbag1.jpg'),
    Image.asset('assets/home/lbag2.jpg'),
    Image.asset('assets/home/lbag3.jpg')
  ];
}
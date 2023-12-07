// ignore_for_file: file_names, library_private_types_in_public_api

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/homePageButtonWidget.dart';

class CarouselSliderWidget extends StatefulWidget {
  final String companyLogo;
  final Color cardColor;

  const CarouselSliderWidget({
    Key? key,
    required this.companyLogo,
    required this.cardColor,
  }) : super(key: key);

  @override
  _CarouselSliderWidgetState createState() => _CarouselSliderWidgetState();
}

class _CarouselSliderWidgetState extends State<CarouselSliderWidget> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        height: 90,
        viewportFraction: 1,
        initialPage: 0,
        enableInfiniteScroll: false,
        reverse: false,
        autoPlay: false,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        enlargeFactor: 0.2,
        scrollDirection: Axis.horizontal,
      ),
      itemCount: 4,
      itemBuilder: (
        BuildContext context,
        int index,
        int realIndex,
      ) {
        return CardWidget(
          ImagePath: widget.companyLogo,
          cardColor: widget.cardColor,
        );
      },
    );
  }
}

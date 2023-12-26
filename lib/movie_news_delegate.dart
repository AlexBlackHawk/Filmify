import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:carousel_slider/carousel_slider.dart';

class MovieNewsPhotosDelegate extends SliverPersistentHeaderDelegate {
  MovieNewsPhotosDelegate({
    required this.minExtent,
    required this.maxExtent,
    required this.newsPhotos,
  });

  @override
  final double minExtent;

  @override
  final double maxExtent;

  final List<Widget> newsPhotos;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            autoPlay: false,
            aspectRatio: 2.0,
            enlargeCenterPage: true,
          ),
          items: newsPhotos,
        ),
        const SizedBox(
          height: 20,
        ),
        const Divider(
          color: Colors.white,
          height: 1.5,
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;

  @override
  FloatingHeaderSnapConfiguration? get snapConfiguration => null;
}

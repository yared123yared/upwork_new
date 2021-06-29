import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  SliderWidget(
      {@required this.buttonCarouselController,
      @required this.items,
      this.onPageChange});

  final List<String> items;
  final Function(int) onPageChange;
  final CarouselController buttonCarouselController;

  @override
  State<StatefulWidget> createState() {
    return _SliderWidgetState();
  }
}

class _SliderWidgetState extends State<SliderWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
      child: CarouselSlider(
        options: CarouselOptions(
            height: 300,
            aspectRatio: 16 / 9,
            viewportFraction: 1.0,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: false,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
            onPageChanged: (index, m) {
              if (widget.onPageChange != null) {
                widget.onPageChange(index);
              }
            }),
        carouselController: widget.buttonCarouselController,
        items: widget.items.map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(color: Colors.transparent),
                  child: Image.network(
                    i,
                    fit: BoxFit.fill,
                  ));
            },
          );
        }).toList(),
      ),
    );
  }
}

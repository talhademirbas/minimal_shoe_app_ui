import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:minimal_shoe_app_ui/constants.dart';

class CarouselSlider extends StatefulWidget {
  const CarouselSlider({Key? key, required this.items}) : super(key: key);

  final List<Widget> items;
  @override
  State<CarouselSlider> createState() => _CarouselSliderState();
}

class _CarouselSliderState extends State<CarouselSlider> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView.builder(
          itemCount: widget.items.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: widget.items[index],
            );
          },
          onPageChanged: (index) {
            setState(() {
              currentPageIndex = index;
            });
          },
        ),
        Positioned.fill(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DotsIndicator(
                  dotsCount: widget.items.length,
                  position: currentPageIndex,
                  decorator: DotsDecorator(
                    activeColor: MyColors.backgroundWhite,
                    size: const Size(20.0, 6.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    activeSize: const Size(35.0, 6.0),
                    activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

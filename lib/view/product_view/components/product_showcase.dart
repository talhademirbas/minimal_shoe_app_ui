import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:minimal_shoe_app_ui/constants.dart';
import 'package:minimal_shoe_app_ui/view/product_view/components/carousel_slider.dart';

class ProductShowcaseWidget extends StatelessWidget {
  const ProductShowcaseWidget({
    super.key,
    required this.logoPath,
    required this.productImagePaths,
    required this.index,
  });

  final String logoPath;
  final List<String> productImagePaths;
  final String errorMessage = 'Houston, we have a problem.';
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(MySizes.showcaseRadius),
        color: MyColors.softGrey,
      ),
      child: Stack(children: [
        Container(
          padding: MyPaddings.kSmallPadding * 2,
          child: Center(
              child: SizedBox(
            height: MediaQuery.of(context).size.width,
            width: MediaQuery.of(context).size.width,
            child: SvgPicture.asset(logoPath, fit: BoxFit.contain),
          )),
        ),
        Center(
          child: SizedBox(
            height: MediaQuery.of(context).size.width,
            width: MediaQuery.of(context).size.width,
            child: Hero(
              tag: index,
              child: CarouselSlider(
                  items: productImagePaths
                      .map((path) => Image.asset(
                            fit: BoxFit.fitWidth,
                            width: double.infinity,
                            path,
                            errorBuilder: (context, error, stackTrace) {
                              return Text(errorMessage);
                            },
                          ))
                      .toList()),
            ),
          ),
        )
      ]),
    );
  }
}

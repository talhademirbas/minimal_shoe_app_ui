// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:minimal_shoe_app_ui/constants.dart';
import 'package:minimal_shoe_app_ui/view/components/carousel_slider.dart';
import 'package:minimal_shoe_app_ui/view/components/choose_colors_component.dart';
import 'package:minimal_shoe_app_ui/view/components/custom_buttons/my_dropdown_button.dart';
import 'package:minimal_shoe_app_ui/view/components/custom_buttons/my_elevated_button.dart';
import 'package:minimal_shoe_app_ui/view/components/custom_buttons/my_icon_button.dart';
import 'package:minimal_shoe_app_ui/view/components/product_showcase.dart';

class ProductView extends StatelessWidget {
  const ProductView(
      {super.key,
      required this.productTitle,
      required this.productPrice,
      required this.productDesc,
      this.dropdownBText = 'Choose Size',
      this.elevatedBText = 'Add To Bag',
      required this.productImagePaths,
      required this.logoPath,
      required this.colorOptions,
      required this.dropdownItemList});

  final String productTitle;
  final String productPrice;
  final String productDesc;
  final String dropdownBText;
  final String elevatedBText;
  final List<String> productImagePaths;
  final String logoPath;
  final List<Color> colorOptions;
  final List<String> dropdownItemList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: productAppBar(),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: MyPaddings.kSmallPadding + MyPaddings.kBottomPadding / 2,
            child: ProductShowcaseWidget(
                logoPath: logoPath, productImagePaths: productImagePaths),
          ),
          Padding(
            padding: MyPaddings.kHorizontalPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: MyPaddings.kBottomPadding / 2,
                  child: Text(productTitle, style: MyFonts.titleStyle),
                ),
                Padding(
                  padding: MyPaddings.kBottomPadding / 2,
                  child: Text(
                    productPrice,
                    style: MyFonts.priceStyle,
                  ),
                ),
                Padding(
                  padding: MyPaddings.kBottomPadding,
                  child: Text(
                    productDesc,
                    style: MyFonts.descStyle,
                  ),
                ),
                Padding(
                  padding: MyPaddings.kBottomPadding,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: ChooseColorsWidget(
                          colorOptionList: colorOptions,
                        ),
                      ),
                      Flexible(
                        child: MyDropdownButton(
                          dropdownItems: dropdownItemList,
                          dropdownHintText: Paths.dropdownText,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: MyElevatedButton(
                      buttonText: elevatedBText, onPressed: () {}),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }

  AppBar productAppBar() {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MyIconButton(iconPath: Paths.chevronLeftPath, onPressed: () {}),
          MyIconButton(iconPath: Paths.threeDotsPath, onPressed: () {})
        ],
      ),
    );
  }
}

// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:minimal_shoe_app_ui/constants.dart';
import 'package:minimal_shoe_app_ui/service/model/product_model.dart';
import 'package:minimal_shoe_app_ui/view/product_view/components/carousel_slider.dart';
import 'package:minimal_shoe_app_ui/view/product_view/components/choose_colors_component.dart';
import 'package:minimal_shoe_app_ui/view/core_components/custom_buttons/my_dropdown_button.dart';
import 'package:minimal_shoe_app_ui/view/core_components/custom_buttons/my_elevated_button.dart';
import 'package:minimal_shoe_app_ui/view/core_components/custom_buttons/my_icon_button.dart';
import 'package:minimal_shoe_app_ui/view/product_view/components/product_showcase.dart';

class ProductView extends StatelessWidget {
  const ProductView(
      {super.key,
      this.dropdownBText = 'Choose Size',
      this.elevatedBText = 'Add To Bag',
      required this.product,
      required this.index});

  final ProductModel product;
  final String dropdownBText;
  final String elevatedBText;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getAppBar(context),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: MyPaddings.kSmallPadding + MyPaddings.kBottomPadding / 2,
            child: ProductShowcaseWidget(
              logoPath: product.logoPath,
              productImagePaths: product.imagePaths,
              index: index,
            ),
          ),
          Padding(
            padding: MyPaddings.kHorizontalPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: MyPaddings.kBottomPadding / 2,
                  child: Text(product.title, style: MyFonts.titleStyle),
                ),
                Padding(
                  padding: MyPaddings.kBottomPadding / 2,
                  child: Text(
                    product.price,
                    style: MyFonts.priceStyle,
                  ),
                ),
                Padding(
                  padding: MyPaddings.kBottomPadding,
                  child: Text(
                    product.desc,
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
                          colorOptionList: product.colorOptions,
                        ),
                      ),
                      Flexible(
                        child: MyDropdownButton(
                          dropdownItems: product.sizeOptions,
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

  AppBar _getAppBar(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MyIconButton(
              iconPath: Paths.chevronLeftPath,
              onPressed: () {
                Navigator.pop(context);
              }),
          MyIconButton(iconPath: Paths.threeDotsPath, onPressed: () {})
        ],
      ),
    );
  }
}

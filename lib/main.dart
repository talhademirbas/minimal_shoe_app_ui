import 'package:flutter/material.dart';
import 'package:minimal_shoe_app_ui/constants.dart';
import 'package:minimal_shoe_app_ui/service/model/product_model.dart';
import 'package:minimal_shoe_app_ui/theme/light_theme.dart';
import 'package:minimal_shoe_app_ui/view/homepageView/homepage_view.dart';
import 'package:minimal_shoe_app_ui/view/productView/product_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  final String _title = 'Minimal Shoe App UI';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: MyThemes().lightTheme,
        title: _title,
        home: HomepageView());
  }
}

/*
ProductView(
          product: ProductModel(
              title: Paths.productTitle,
              price: Paths.productPrice,
              desc: Paths.productDesc,
              imagePaths: [
                Paths.nikeShoe1Path,
                Paths.nikeShoe1Path,
              ],
              logoPath: Paths.nikeLogoPath,
              colorOptions: [
                Color(0xff29605D),
                Color(0xff5B8EA3),
                Color(0xff746A36),
                Color(0xff2E2E2E),
              ],
              sizeOptions: ['40', '41', '42']),
        )
*/
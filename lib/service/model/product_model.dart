// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:minimal_shoe_app_ui/constants.dart';

class ProductModel {
  final String title;
  final String price;
  final String desc;
  late List<String> imagePaths;
  final String logoPath;
  final List<Color> colorOptions;
  final List<String> sizeOptions;

  ProductModel({
    required this.title,
    required this.price,
    required this.desc,
    required this.logoPath,
    required this.colorOptions,
    required this.sizeOptions,
  });

  Future<void> initializeImagePaths() async {
    imagePaths = List.generate(7,
        (index) => '${Paths.productImagesPathBase}$title (${index + 1}).png');
    imagePaths.insert(0, '${Paths.productImagesPathBase}$title.png');
    imagePaths = imagePaths.reversed.toList();
  }
}

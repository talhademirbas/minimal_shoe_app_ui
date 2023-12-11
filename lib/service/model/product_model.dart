// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ProductModel {
  ProductModel({
    required this.title,
    required this.price,
    required this.desc,
    required this.imagePaths,
    required this.logoPath,
    required this.colorOptions,
    required this.sizeOptions,
  });

  String title;
  String price;
  String desc;
  List<String> imagePaths;
  String logoPath;
  List<Color> colorOptions;
  List<String> sizeOptions;
}

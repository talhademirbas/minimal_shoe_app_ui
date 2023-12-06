import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:minimal_shoe_app_ui/constants.dart';

class MyThemes {
  late ThemeData lightTheme;

  MyThemes() {
    lightTheme = ThemeData.light().copyWith(
      appBarTheme: const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      scaffoldBackgroundColor: MyColors.backgroundWhite,
    );
  }
}

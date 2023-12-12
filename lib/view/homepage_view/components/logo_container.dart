import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:minimal_shoe_app_ui/constants.dart';

class LogoContainer extends StatelessWidget {
  const LogoContainer({
    super.key,
    required this.logoPath,
  });

  final String logoPath;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18), color: MyColors.softGrey),
        height: 70,
        width: 70,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SvgPicture.asset(logoPath),
        ));
  }
}

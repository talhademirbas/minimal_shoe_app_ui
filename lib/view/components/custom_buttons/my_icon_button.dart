import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:minimal_shoe_app_ui/constants.dart';

class MyIconButton extends StatelessWidget {
  const MyIconButton({
    super.key,
    required this.iconPath,
    required this.onPressed,
  });

  final String iconPath;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      splashRadius: MySizes.buttonRadius,
      icon: SvgPicture.asset(iconPath),
      onPressed: onPressed,
    );
  }
}

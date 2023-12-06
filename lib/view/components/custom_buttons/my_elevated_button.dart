import 'package:flutter/material.dart';
import 'package:minimal_shoe_app_ui/constants.dart';

class MyElevatedButton extends StatelessWidget {
  const MyElevatedButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
    this.isStretch = false,
  });

  final String buttonText;
  final void Function() onPressed;
  final bool
      isStretch; //will implement this later on, will make it a core component

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: MyColors.pureBlack,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
        onPressed: onPressed,
        child: Padding(
          padding: MyPaddings.elevatedButtonPadding,
          child: Text(buttonText, style: MyFonts.elevatedTextStyle),
        ));
  }
}

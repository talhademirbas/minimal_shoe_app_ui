import 'package:flutter/material.dart';
import 'package:minimal_shoe_app_ui/constants.dart';
import 'package:minimal_shoe_app_ui/view/core_components/custom_buttons/my_icon_button.dart';

class MyTextField extends StatelessWidget {
  MyTextField({
    super.key,
  });

  InputDecoration formInputDecoration = InputDecoration(
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      hintText: 'Search',
      hintStyle: MyFonts.priceStyle.copyWith(fontWeight: FontWeight.w400),
      prefixIcon:
          MyIconButton(iconPath: Paths.searchIconPath, onPressed: () {}),
      fillColor: Colors.grey.withOpacity(0.14),
      filled: true,
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide.none));

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        autofocus: false,
        textInputAction: TextInputAction.done,
        decoration: formInputDecoration);
  }
}

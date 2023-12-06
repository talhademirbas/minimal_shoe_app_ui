import 'package:flutter/material.dart';
import 'package:minimal_shoe_app_ui/constants.dart';

class MyDropdownButton extends StatefulWidget {
  const MyDropdownButton({
    super.key,
    required this.dropdownItems,
    required this.dropdownHintText,
  });

  final List<String> dropdownItems;
  final String dropdownHintText;

  @override
  State<MyDropdownButton> createState() => _MyDropdownButtonState();
}

class _MyDropdownButtonState extends State<MyDropdownButton> {
  String? dropdownValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: MyColors.softGrey),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          borderRadius: BorderRadius.circular(12),
          hint: Text(
            widget.dropdownHintText,
            style: MyFonts.dropdownTextStyle,
          ),
          value: dropdownValue,
          isDense: true,
          isExpanded: false,
          padding: MyPaddings.dropdownpadding,
          style: MyFonts.dropdownTextStyle,
          onChanged: (String? value) {
            setState(() {
              dropdownValue = value!;
            });
          },
          items: widget.dropdownItems
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

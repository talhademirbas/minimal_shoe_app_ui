import 'package:flutter/material.dart';

class ChooseColorsWidget extends StatelessWidget {
  const ChooseColorsWidget({
    super.key,
    required this.colorOptionList,
  });

  final List<Color> colorOptionList;

  @override
  Widget build(BuildContext context) {
    const double size = 23.0;
    const double spaceWidth = 13;

    return SizedBox(
      height: size,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: colorOptionList.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              debugPrint('$index');
            },
            child: Container(
                height: size,
                width: size,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: colorOptionList[index])),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(width: spaceWidth),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:minimal_shoe_app_ui/constants.dart';
import 'package:minimal_shoe_app_ui/view/homepageView/components/logo_container.dart';

class TopBrandsChart extends StatelessWidget {
  const TopBrandsChart({
    super.key,
    required this.chartList,
  });

  final List<String> chartList;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: Text(
            'Top Brands',
            style: MyFonts.titleStyle
                .copyWith(fontWeight: FontWeight.w500, fontSize: 22),
          ),
        ),
        SizedBox(
          height: 70,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: chartList.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  debugPrint('$index');
                },
                child: LogoContainer(
                  logoPath: chartList[index],
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(width: 28),
          ),
        )
      ],
    );
  }
}

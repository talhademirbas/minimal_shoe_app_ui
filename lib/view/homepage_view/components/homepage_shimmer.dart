import 'package:flutter/material.dart';
import 'package:minimal_shoe_app_ui/constants.dart';

class HomepageShimmer extends StatelessWidget {
  const HomepageShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: MyPaddings.kHorizontalPadding,
          child: const Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 27),
                  child: MyTextfieldShimmer()),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 40),
                child: TopBrandsChartShimmer(),
              ),
              Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: TextShimmer(
                    width: 80,
                  )),
              ProductGridViewShimmer(),
            ],
          ),
        ),
      ),
    );
  }
}

class TextShimmer extends StatelessWidget {
  const TextShimmer({super.key, required this.width, this.height = 26});

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: MyColors.softGrey,
        ));
  }
}

class LogoContainerShimmer extends StatelessWidget {
  const LogoContainerShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: MyColors.softGrey,
        ));
  }
}

class TopBrandsChartShimmer extends StatelessWidget {
  const TopBrandsChartShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: EdgeInsets.only(bottom: 30),
            child: TextShimmer(width: 100)),
        SizedBox(
            height: 70,
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      LogoContainerShimmer(),
                      LogoContainerShimmer(),
                      LogoContainerShimmer(),
                      LogoContainerShimmer(),
                    ],
                  ),
                ),
                SizedBox(
                  width: 18,
                )
              ],
            ))
      ],
    );
  }
}

class MyTextfieldShimmer extends StatelessWidget {
  const MyTextfieldShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: MyColors.softGrey,
        ));
  }
}

class ProductGridViewShimmer extends StatelessWidget {
  const ProductGridViewShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Column(
            children: [ProductOverviewShimmer(), ProductOverviewShimmer()],
          ),
        ),
        SizedBox(width: 20),
        Expanded(
          child: Column(
            children: [
              SizedBox(height: 40),
              ProductOverviewShimmer(),
              ProductOverviewShimmer()
            ],
          ),
        )
      ],
    );
  }
}

class ProductOverviewShimmer extends StatelessWidget {
  const ProductOverviewShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: AspectRatio(
        aspectRatio: 0.6,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: MyColors.softGrey,
                  )),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 15.0),
              child: TextShimmer(width: 60),
            ),
            const Spacer(),
            const Padding(
              padding: EdgeInsets.only(bottom: 10.0),
              child: TextShimmer(width: double.infinity),
            )
          ],
        ),
      ),
    );
  }
}

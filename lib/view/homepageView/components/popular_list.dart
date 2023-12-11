import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:minimal_shoe_app_ui/constants.dart';
import 'package:minimal_shoe_app_ui/service/model/product_model.dart';
import 'package:minimal_shoe_app_ui/view/homepageView/components/offset_item_widget';

/*
class PopularList extends StatelessWidget {
  PopularList({
    super.key,
    required this.productList,
  });

  final container = Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      child: Text('a'),
      height: 80,
      width: 80,
      color: Colors.redAccent,
    ),
  );

  final List<ProductModel> productList;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: MySizes.kVerticalPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SliverToBoxAdapter(
              child: Text(
                'Popular',
                style: MyFonts.titleStyle
                    .copyWith(fontWeight: FontWeight.w500, fontSize: 22),
              ),
            ),
            //builder
            SliverGrid.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
              ),
              itemCount: productList.length,
              itemBuilder: (context, index) {
                final product = productList[index];
                double offset = 0.0;
                if (index % 2 == 1) {
                  offset = 10.0; // Adjust offset amount as needed
                }
                return OffsetItemWidget(
                    child: productOverviewWidget(product: product),
                    offset: offset);
              },
            ),
          ],
        ),
      ),
    );
  }
}
*/
class productOverviewWidget extends StatelessWidget {
  const productOverviewWidget({
    super.key,
    required this.product,
  });

  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: MyColors.softGrey),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                  width: 10000,
                  child: SizedBox(
                    child: Image.asset(
                      fit: BoxFit.fitWidth,
                      product.imagePaths[0],
                    ),
                  ),
                ),
              )),
        ),
        Padding(
          padding: MyPaddings.kBottomPadding,
          child: Text(
            product.title,
            style: MyFonts.priceStyle.copyWith(color: MyColors.pureBlack),
          ),
        ),
        Text(
          product.price,
          style: MyFonts.titleStyle.copyWith(fontSize: 18),
        )
      ],
    );
  }
}

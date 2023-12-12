// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:minimal_shoe_app_ui/constants.dart';
import 'package:minimal_shoe_app_ui/service/model/product_model.dart';
import 'package:minimal_shoe_app_ui/view/productView/product_view.dart';

class ProductOverviewWidget extends StatelessWidget {
  const ProductOverviewWidget({
    Key? key,
    required this.product,
    required this.index,
  }) : super(key: key);

  final ProductModel product;
  final int index;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    ProductView(product: product, index: index)));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: MyColors.softGrey,
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Hero(
                  tag: index,
                  child: Image.asset(
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                    product.imagePaths[0],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text(
              product.price,
              style: MyFonts.titleStyle.copyWith(fontSize: 18),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text(
              product.title,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: MyFonts.priceStyle.copyWith(color: MyColors.pureBlack),
            ),
          )
        ],
      ),
    );
  }
}

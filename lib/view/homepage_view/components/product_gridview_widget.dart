import 'package:flutter/material.dart';
import 'package:minimal_shoe_app_ui/service/model/product_model.dart';
import 'package:minimal_shoe_app_ui/view/homepage_view/components/offset_item_widget.dart';
import 'package:minimal_shoe_app_ui/view/homepage_view/components/product_overview_widget.dart';

class ProductGridview extends StatelessWidget {
  const ProductGridview({
    super.key,
    required this.productList,
  });

  final List<ProductModel>? productList;

  @override
  Widget build(BuildContext context) {
    return productList == null
        ? const SliverToBoxAdapter(child: SizedBox.shrink())
        : SliverGrid.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              childAspectRatio: 0.60,
            ),
            itemCount: productList!.length,
            itemBuilder: (context, index) {
              final product = productList![index];
              double offset = 0.0;
              if (index % 2 == 1) {
                offset = 20.0; // Adjust offset amount as needed
              }
              return OffsetItemWidget(
                offset: offset,
                child: Center(
                    child:
                        ProductOverviewWidget(product: product, index: index)),
              );
            },
          );
  }
}

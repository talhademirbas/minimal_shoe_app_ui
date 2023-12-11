import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:minimal_shoe_app_ui/constants.dart';
import 'package:minimal_shoe_app_ui/service/model/product_model.dart';
import 'package:minimal_shoe_app_ui/view/components/custom_buttons/my_icon_button.dart';
import 'package:minimal_shoe_app_ui/view/homepageView/components/my_textfield.dart';
import 'package:minimal_shoe_app_ui/view/homepageView/components/offset_item_widget';
import 'package:minimal_shoe_app_ui/view/homepageView/components/popular_list.dart';
import 'package:minimal_shoe_app_ui/view/homepageView/components/top_brands_chart.dart';

class HomepageView extends StatelessWidget {
  const HomepageView({super.key});

  @override
  Widget build(BuildContext context) {
    List<ProductModel> productList = [
      ProductModel(
          title: Paths.productTitle,
          price: Paths.productPrice,
          desc: Paths.productDesc,
          imagePaths: [
            Paths.nikeShoe1Path,
            Paths.nikeShoe1Path,
          ],
          logoPath: Paths.nikeLogoPath,
          colorOptions: [
            Color(0xff29605D),
            Color(0xff5B8EA3),
            Color(0xff746A36),
            Color(0xff2E2E2E),
          ],
          sizeOptions: ['40', '41', '42']),
      ProductModel(
          title: Paths.productTitle,
          price: Paths.productPrice,
          desc: Paths.productDesc,
          imagePaths: [
            Paths.nikeShoe1Path,
            Paths.nikeShoe1Path,
          ],
          logoPath: Paths.nikeLogoPath,
          colorOptions: [
            Color(0xff29605D),
            Color(0xff5B8EA3),
            Color(0xff746A36),
            Color(0xff2E2E2E),
          ],
          sizeOptions: ['40', '41', '42']),
      ProductModel(
          title: Paths.productTitle,
          price: Paths.productPrice,
          desc: Paths.productDesc,
          imagePaths: [
            Paths.nikeShoe1Path,
            Paths.nikeShoe1Path,
          ],
          logoPath: Paths.nikeLogoPath,
          colorOptions: [
            Color(0xff29605D),
            Color(0xff5B8EA3),
            Color(0xff746A36),
            Color(0xff2E2E2E),
          ],
          sizeOptions: ['40', '41', '42']),
    ];
    return Scaffold(
      appBar: homepageAppBar(),
      body: Padding(
        padding: MyPaddings.kHorizontalPadding,
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: EdgeInsets.symmetric(vertical: 27),
              sliver: SliverToBoxAdapter(child: MyTextField()),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(vertical: MySizes.kVerticalPadding),
              sliver: SliverToBoxAdapter(
                child: TopBrandsChart(chartList: [
                  Paths.nikeLogoPath,
                ]),
              ),
            ),
            SliverGrid.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 40.0,
                  crossAxisSpacing: 20),
              itemCount: productList.length,
              itemBuilder: (context, index) {
                final product = productList[index];
                double offset = 0.0;
                if (index % 2 == 1) {
                  offset = 20.0; // Adjust offset amount as needed
                }
                return OffsetItemWidget(
                    child: productOverviewWidget(product: product),
                    offset: offset);
              },
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'HOME'),
        BottomNavigationBarItem(
            icon: Icon(Icons.search_off_outlined), label: 'SHOP'),
        BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard_outlined), label: 'CART')
      ]),
    );
  }

  AppBar homepageAppBar() {
    return AppBar(
      titleSpacing: 0,
      title: Padding(
        padding: MyPaddings.kHorizontalPadding,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Sneakers', style: MyFonts.titleStyle),
            MyIconButton(
              iconPath: Paths.notificationBellPath,
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}

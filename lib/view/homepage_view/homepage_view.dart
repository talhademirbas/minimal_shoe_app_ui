import 'package:flutter/material.dart';
import 'package:minimal_shoe_app_ui/constants.dart';
import 'package:minimal_shoe_app_ui/service/model/product_model.dart';
import 'package:minimal_shoe_app_ui/view/core_components/custom_buttons/my_icon_button.dart';
import 'package:minimal_shoe_app_ui/view/homepage_view/components/my_textfield.dart';
import 'package:minimal_shoe_app_ui/view/homepage_view/components/product_gridview_widget.dart';
import 'package:minimal_shoe_app_ui/view/homepage_view/components/top_brands_chart.dart';

class HomepageView extends StatefulWidget {
  const HomepageView({super.key});

  @override
  State<HomepageView> createState() => _HomepageViewState();
}

class _HomepageViewState extends State<HomepageView> {
  List<ProductModel>? productList;

  List<String>? chartlist;
  @override
  void initState() {
    super.initState();
    fetchProducts().then((result) {
      print("result: 0");
      setState(() {});
    });
  }

  Future<void> fetchProducts() async {
    await Future.delayed(Duration(seconds: 5));
    productList = [
      ProductModel(
        title: Paths.productTitle,
        price: Paths.productPrice,
        desc: Paths.productDesc,
        logoPath: Paths.nikeLogoPath,
        colorOptions: [
          const Color(0xff29605D),
          const Color(0xff5B8EA3),
          const Color(0xff746A36),
          const Color(0xff2E2E2E),
        ],
        sizeOptions: ['40', '41', '42'],
      ),
      ProductModel(
        title: Paths.productTitle2,
        price: Paths.productPrice,
        desc: Paths.productDesc,
        logoPath: Paths.nikeLogoPath,
        colorOptions: [
          const Color(0xff29605D),
          const Color(0xff5B8EA3),
          const Color(0xff746A36),
          const Color(0xff2E2E2E),
        ],
        sizeOptions: ['40', '41', '42'],
      ),
      ProductModel(
        title: Paths.productTitle,
        price: Paths.productPrice,
        desc: Paths.productDesc,
        logoPath: Paths.nikeLogoPath,
        colorOptions: [
          const Color(0xff29605D),
          const Color(0xff5B8EA3),
          const Color(0xff746A36),
          const Color(0xff2E2E2E),
        ],
        sizeOptions: ['40', '41', '42'],
      ),
      ProductModel(
        title: Paths.productTitle,
        price: Paths.productPrice,
        desc: Paths.productDesc,
        logoPath: Paths.nikeLogoPath,
        colorOptions: [
          const Color(0xff29605D),
          const Color(0xff5B8EA3),
          const Color(0xff746A36),
          const Color(0xff2E2E2E),
        ],
        sizeOptions: ['40', '41', '42'],
      ),
    ];
    await Future.forEach(productList!, (product) async {
      await product.initializeImagePaths();
    });
    chartlist = [
      Paths.nikeLogoPath,
      Paths.adidasLogoPath,
      Paths.pumaLogoPath,
      Paths.converseLogoPath
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homepageAppBar(),
      body: Padding(
        padding: MyPaddings.kHorizontalPadding,
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.only(top: 27),
              sliver: SliverToBoxAdapter(child: MyTextField()),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              sliver: SliverToBoxAdapter(
                child: TopBrandsChart(
                  chartList: chartlist,
                ),
              ),
            ),
            SliverPadding(
                padding: const EdgeInsets.only(bottom: 30),
                sliver: SliverToBoxAdapter(
                  child: Text('Popular',
                      style: MyFonts.titleStyle
                          .copyWith(fontWeight: FontWeight.w500, fontSize: 22)),
                )),
            ProductGridview(
              productList: productList,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
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

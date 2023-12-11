import 'package:flutter/material.dart';

class MyColors {
  static const Color backgroundWhite = Color(0xffFFFFFF);
  static const Color softGrey = Color(0xffEEEEEE);
  static const Color pureBlack = Color(0xff000000);
}

class MySizes {
  static const double kDefaultFont = 12.0;
  static const double kSmallPadding = 12.0;
  static const double kHorizontalPadding = 24.0;
  static const double kVerticalPadding = 18.0;
  static const double kBottomPadding = 24.0;
  static const double buttonRadius = 24.0;
  static const double showcaseRadius = 20.0;
}

class MyPaddings {
  static EdgeInsets kSmallPadding = const EdgeInsets.all(MySizes.kSmallPadding);

  static EdgeInsets kBottomPadding =
      const EdgeInsets.only(bottom: MySizes.kBottomPadding);

  static EdgeInsets kHorizontalPadding =
      const EdgeInsets.symmetric(horizontal: MySizes.kHorizontalPadding);

  static EdgeInsets dropdownpadding =
      const EdgeInsets.symmetric(horizontal: 18, vertical: 10);

  static const EdgeInsets elevatedButtonPadding = EdgeInsets.all(16.0);
}

class MyFonts {
  static const titleStyle = TextStyle(
    color: Colors.black,
    fontSize: 25,
    fontFamily: 'Gilroy-SemiBold',
    fontWeight: FontWeight.w700,
    letterSpacing: 0.25,
  );

  static final priceStyle = TextStyle(
    color: Colors.black.withOpacity(0.6000000238418579),
    fontSize: 18,
    fontFamily: 'Gilroy-SemiBold',
    fontWeight: FontWeight.w600,
  );

  static final descStyle = TextStyle(
    color: Colors.black.withOpacity(0.4000000059604645),
    fontSize: 16,
    fontFamily: 'Gilroy-SemiBold',
    fontWeight: FontWeight.w600,
    letterSpacing: 0.20,
  );

  static final dropdownTextStyle = TextStyle(
    color: Colors.black.withOpacity(0.6000000238418579),
    fontSize: 15,
    fontFamily: 'Gilroy-SemiBold',
    fontWeight: FontWeight.w600,
    height: 0,
  );

  static const elevatedTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 18,
    fontFamily: 'Gilroy-SemiBold',
    fontWeight: FontWeight.w500,
  );
}

class Paths {
  static const String productTitle = 'Nike Air Max 90';
  static const String productPrice = '\$239.80';
  static const String productDesc =
      'A pillar of sneaker culture, the Nike Air Max 90 remains one of the most significant designs since the brand’s founding. And while its OG colorways are some of the most significant.';
  static const String dropdownText = 'Choose Size';
  static const String buttonText = 'Add To Bag';

  static const String iconsPathBase = 'assets/icons/';
  static const String chevronLeftPath = '${iconsPathBase}chevron_left.svg';
  static const String threeDotsPath = '${iconsPathBase}three_dots.svg';
  static const String notificationBellPath =
      '${iconsPathBase}notification_bell.svg';
  static const String searchIconPath = '${iconsPathBase}search_icon.svg';

  static const String logosPathBase = 'assets/logos/';
  static const String nikeLogoPath = '${logosPathBase}nike_logo.svg';
  static const String pumaLogoPath = '${logosPathBase}puma_logo.svg';
  static const String converseLogoPath = '${logosPathBase}converse_logo.svg';
  static const String adidasLogoPath = '${logosPathBase}adidas_logo.svg';

  static const String productImagesPathBase = 'assets/productImages/';
  static const String nikeShoe1Path = '${productImagesPathBase}nikeShoe1.png';
  static const String shoe2Path = '${productImagesPathBase}shoe2.png';
  static const String shoe3Path = '${productImagesPathBase}shoe3.png';
  static const String shoe4Path = '${productImagesPathBase}shoe4.png';
}

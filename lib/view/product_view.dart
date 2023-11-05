import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset('assets/icons/chevron_left.svg'),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset('assets/icons/three_dots.svg'),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7) +
                const EdgeInsets.only(bottom: 24),
            child: Container(
              height: MediaQuery.of(context).size.width,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xffEEEEEE),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36.0) +
                const EdgeInsets.only(bottom: 12),
            child: const Text('Lorem ipsum'),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 36.0),
            child: Text('Lorem ipsum'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36.0, vertical: 18),
            child: Text('Lorem ipsum' * 20),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36.0) +
                const EdgeInsets.only(bottom: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  children: [
                    Icon(
                      Icons.circle,
                      size: 23,
                    ),
                    SizedBox(width: 13),
                    Icon(
                      Icons.circle,
                      size: 23,
                    ),
                    SizedBox(width: 13),
                    Icon(
                      Icons.circle,
                      size: 23,
                    ),
                    SizedBox(width: 13),
                    Icon(
                      Icons.circle,
                      size: 23,
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color(0xffEEEEEE),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 18, vertical: 10),
                    child: DropdownButton<String>(
                      isDense: true,
                      underline: SizedBox.shrink(),
                      items: [
                        const DropdownMenuItem(child: Text('Choose Size'))
                      ],
                      onChanged: (Object? value) {},
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36.0),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                onPressed: () {},
                child: const Center(
                    child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text('Add To Bag'),
                ))),
          )
        ],
      )),
    );
  }
}

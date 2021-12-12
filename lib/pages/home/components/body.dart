import 'package:bitik_mobile_app/pages/home/components/app_bar.dart';
import 'package:bitik_mobile_app/pages/home/components/categories.dart';
import 'package:bitik_mobile_app/pages/home/components/discount_banner.dart';
import 'package:bitik_mobile_app/pages/home/components/over_soon_products.dart';
import 'package:bitik_mobile_app/pages/home/components/popular_products.dart';
import 'package:bitik_mobile_app/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            HomeHeader(),
            SizedBox(
              height: 9,
            ),
            // Divider(
            //   color: Colors.black,
            //   thickness: 0.3,
            //   height: 15.6,
            // ),
            DiscountBanner(),
            Categories(),
            Divider(
              color: Colors.black,
              thickness: 0.3,
              height: 10,
            ),
            SizedBox(
              height: 5,
            ),
            PopularProducts(),
            Divider(
              color: Colors.black,
              thickness: 0.3,
              height: 10,
            ),
            SizedBox(
              height: 5,
            ),
            WillBeOverSoon(),
          ],
        ),
      ),
    );
  }
}

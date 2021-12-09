import 'package:bitik_mobile_app/pages/home/components/app_bar.dart';
import 'package:bitik_mobile_app/pages/home/components/categories.dart';
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
            Categories(),
            PopularProducts(),
          ],
        ),
      ),
    );
  }
}

import 'package:bitik_mobile_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

class Categories extends StatelessWidget {
  List<Map<String, dynamic>> categories = [
    {"icon": "lib/assets/icons/mobile.svg", "text": "Telefon"},
    {"icon": "lib/assets/icons/desktop.svg", "text": "Bilgisayar"},
    {"icon": "lib/assets/icons/headphones.svg", "text": "Kulaklık"},
    {"icon": "lib/assets/icons/watch.svg", "text": "Akıllı Saat"},
    {"icon": "lib/assets/icons/more.svg", "text": "Daha Fazla"},
  ];
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding: EdgeInsets.only(
          top: getProportionateScreenWidth(9),
          left: getProportionateScreenWidth(15),
          bottom: getProportionateScreenWidth(20),
          right: getProportionateScreenWidth(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          categories.length,
          (index) => CategoryCard(
            icon: categories[index]["icon"],
            text: categories[index]["text"],
            press: () {},
          ),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String? icon, text;
  final GestureTapCallback press;

  const CategoryCard(
      {Key? key, this.icon, required this.text, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getProportionateScreenWidth(60),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(15)),
              height: getProportionateScreenWidth(50),
              width: getProportionateScreenWidth(50),
              decoration: BoxDecoration(
                color: HexColor("#e6d1e4"),
                borderRadius: BorderRadius.circular(10),
              ),
              child: SvgPicture.asset(icon!),
            ),
            SizedBox(height: 5),
            Text(text!, textAlign: TextAlign.center)
          ],
        ),
      ),
    );
  }
}

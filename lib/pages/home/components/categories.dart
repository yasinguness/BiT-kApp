import 'package:bitik_mobile_app/size_config.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  List<Map<String, dynamic>> categories = [
    {"icon": "assets/icons/Flash Icon.svg", "text": "Flash Deal"},
    {"icon": "assets/icons/Bill Icon.svg", "text": "Bill"},
    {"icon": "assets/icons/Game Icon.svg", "text": "Game"},
    {"icon": "assets/icons/Gift Icon.svg", "text": "Daily Gift"},
    {"icon": "assets/icons/Discover.svg", "text": "More"},
  ];
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding: EdgeInsets.only(
          top: getProportionateScreenWidth(50),
          left: getProportionateScreenWidth(20),
          bottom: getProportionateScreenWidth(20),
          right: getProportionateScreenWidth(20)),
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
        width: getProportionateScreenWidth(55),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(15)),
              height: getProportionateScreenWidth(55),
              width: getProportionateScreenWidth(55),
              decoration: BoxDecoration(
                color: Color(0xFFFFECDF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(Icons.home),
            ),
            SizedBox(height: 5),
            Text(text!, textAlign: TextAlign.center)
          ],
        ),
      ),
    );
  }
}

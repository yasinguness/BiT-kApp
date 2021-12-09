import 'package:bitik_mobile_app/common_widgets/product_card.dart';
import 'package:bitik_mobile_app/models/product.dart';
import 'package:bitik_mobile_app/pages/home/components/section_title.dart';
import 'package:bitik_mobile_app/size_config.dart';
import 'package:flutter/material.dart';

class WillBeOverSoon extends StatelessWidget {
  const WillBeOverSoon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
          ),
          child: SectionTitle(title: "Yakında Bitecek", press: () {}),
        ),
        SizedBox(height: getProportionateScreenWidth(10)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) {
                  if (demoProducts[index].isPopular)
                    return ProductCard(product: demoProducts[index]);

                  return SizedBox
                      .shrink(); // here by default width and height is 0
                },
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        )
      ],
    );
  }
}

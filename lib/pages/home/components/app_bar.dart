import 'package:bitik_mobile_app/pages/home/components/search_field.dart';
import 'package:bitik_mobile_app/size_config.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'BiTık',
            style: TextStyle(fontSize: 25),
          ),
          SearchField(),
        ],
      ),
    );
  }
}

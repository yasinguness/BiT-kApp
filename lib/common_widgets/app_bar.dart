import 'package:bitik_mobile_app/pages/home/components/search_field.dart';
import 'package:bitik_mobile_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

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
      child: Column(
        children: [
          Stack(
            children: [
              Center(
                child: Container(
                  padding: EdgeInsets.only(top: 6),
                  child: Text(
                    'BiTık',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 0, top: 6),
                alignment: Alignment.topRight,
                child: Image.asset(
                  "lib/assets/images/pp.png",
                  height: 40,
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 0, top: 10),
                alignment: Alignment.topLeft,
                child: Icon(
                  Icons.add,
                  size: 30,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 9,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SearchField(),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:bitik_mobile_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      margin: EdgeInsets.only(top: 4),
      width: SizeConfig.screenWidth * 0.7,
      decoration: BoxDecoration(

        color: Colors.white.withOpacity(0.05),
        borderRadius: BorderRadius.circular(27),
      ),
      child: TextField(
        onChanged: (value) => print(value),
        decoration: InputDecoration(
          hintStyle: TextStyle(color: Colors.white.withOpacity(0.4)),
            contentPadding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20),
                vertical: getProportionateScreenWidth(13)),
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            hintText: "Çekiliş ara",
            prefixIcon: Icon(Icons.search)),
      ),
    );
  }
}

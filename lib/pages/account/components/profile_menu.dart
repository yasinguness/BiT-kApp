import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

class ProfileMenu extends StatelessWidget {
  final String text, icon;
  final VoidCallback? press;

  const ProfileMenu(
      {Key? key, required this.text, required this.icon, this.press})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextButton(
        style: TextButton.styleFrom(
          primary: HexColor("c299c0"),
          padding: EdgeInsets.all(20),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          backgroundColor: Color(0xFFF5F6F9),
        ),
        onPressed: press,
        child: Row(
          children: [
            SvgPicture.asset(
              icon,
              color: HexColor("c299c0"),
              width: 22,
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(child: Text(text)),
            Icon(Icons.arrow_forward_ios)
          ],
        ),
      ),
    );
  }
}

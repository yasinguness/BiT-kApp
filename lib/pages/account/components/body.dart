import 'package:bitik_mobile_app/pages/account/components/profile_menu.dart';
import 'package:bitik_mobile_app/pages/account/components/profile_picture.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            ProfilePic(),
            SizedBox(height: 20),
            ProfileMenu(
              text: "Hesabım",
              icon: "lib/assets/icons/user.svg",
              press: () => {},
            ),
            ProfileMenu(
              text: "Katıldığım Çekilişler",
              icon: "lib/assets/icons/gift.svg",
              press: () => {},
            ),
            ProfileMenu(
              text: "Bildirimler",
              icon: "lib/assets/icons/bell.svg",
              press: () => {},
            ),
            ProfileMenu(
              text: "Ayarlar",
              icon: "lib/assets/icons/settings.svg",
              press: () => {},
            ),
            ProfileMenu(
              text: "Yardım Merkezi",
              icon: "lib/assets/icons/questionmark.svg",
              press: () => {},
            ),
            ProfileMenu(
              text: "Çıkış Yap",
              icon: "lib/assets/icons/logout.svg",
              press: () => {},
            ),
          ],
        ),
      ),
    );
  }
}

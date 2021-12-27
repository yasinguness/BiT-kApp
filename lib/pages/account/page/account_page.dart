import 'package:bitik_mobile_app/common_widgets/custom_bottom_navbar/custom_bnb.dart';
import 'package:bitik_mobile_app/common_widgets/custom_bottom_navbar/custom_bnb_tab.dart';
import 'package:bitik_mobile_app/pages/account/components/body.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AccountPage extends StatelessWidget {
  AccountPage({Key? key}) : super(key: key);
  static const String routeName = "/profile";
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => !await navigatorKey.currentState!.maybePop(),
      child: Scaffold(
        backgroundColor: HexColor("#121212"),
        body: Body(),
        bottomNavigationBar: CustomBottomNavBar(selectedMenu: AllTabs.Account),
      ),
    );
  }
}

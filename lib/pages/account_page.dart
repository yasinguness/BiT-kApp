import 'package:bitik_mobile_app/common_widgets/custom_bottom_navbar/custom_bnb.dart';
import 'package:bitik_mobile_app/common_widgets/custom_bottom_navbar/custom_bnb_tab.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);
  static const String routeName = "/profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("account page"),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: AllTabs.Account),
    );
  }
}

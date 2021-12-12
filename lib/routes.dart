import 'package:bitik_mobile_app/pages/account_page.dart';
import 'package:bitik_mobile_app/pages/home/page/home_page.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  HomePage.routeName: (context) => HomePage(),
  AccountPage.routeName: (context) => AccountPage(),
};

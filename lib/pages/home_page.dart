import 'dart:ui';

import 'package:bitik_mobile_app/common_widgets/custom_bottom_navbar/custom_bnb.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HexColor("f7f7f7"),
        appBar: AppBar(
          backgroundColor: HexColor("#1F1F39"),
          title: const Text('BiTIK'),
          centerTitle: true,
        ),
        body: CustomScrollView(
          primary: false,
          slivers: <Widget>[
            SliverPadding(
              padding: const EdgeInsets.all(20),
              sliver: SliverGrid.count(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(9),
                    child: Wrap(
                      children: <Widget>[
                        Image(
                          image: AssetImage(
                              "lib/assets/images/iphone-13-pro-max.png"),
                        ),
                        Text("iPhone 13 Pro Max")
                      ],
                    ),
                    color: Colors.white,
                  ),
                  Container(
                    padding: const EdgeInsets.all(9),
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      children: [
                        Image(
                          image: AssetImage(
                              "lib/assets/images/iphone-13-pro-max.png"),
                        ),
                        Text("iPhone 13 Pro Max")
                      ],
                    ),
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: CustomBNB());
  }
}

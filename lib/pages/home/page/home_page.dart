import 'dart:ui';
import 'package:bitik_mobile_app/common_widgets/custom_bottom_navbar/custom_bnb.dart';
import 'package:bitik_mobile_app/common_widgets/custom_bottom_navbar/custom_bnb_tab.dart';
import 'package:bitik_mobile_app/pages/home/components/app_bar.dart';
import 'package:bitik_mobile_app/pages/home/components/body.dart';
import 'package:bitik_mobile_app/pages/home/components/categories.dart';
import 'package:bitik_mobile_app/repositories/base_repository.dart';
import 'package:bitik_mobile_app/repositories/product_repository.dart';
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
    // ProductRepository productRepo = ProductRepository();
    // productRepo.Create();
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}

void onPressed() {
  print("hello");
}

// Widget oldWidget() {
//   SafeArea(
//       child: SingleChildScrollView(
//         child: Column(
//           children: [
//             Scaffold(
//                 backgroundColor: HexColor("fafafa"),
//                 appBar: AppBar(
//                   backgroundColor: HexColor("ffffff"),
//                   title: const Text(
//                     'BiTIK',
//                     style: TextStyle(color: Colors.black),
//                   ),
//                   centerTitle: true,
//                 ),
//                 body: SingleChildScrollView(
//                   child: GridView.count(
//                     shrinkWrap: true,
//                     primary: false,
//                     padding: const EdgeInsets.all(7),
//                     crossAxisSpacing: 10,
//                     mainAxisSpacing: 10,
//                     crossAxisCount: 2,
//                     children: <Widget>[
//                       Categories(),
//                       Container(
//                         decoration: BoxDecoration(
//                             border: Border.all(width: 1, color: Colors.black),
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(10)),
//                         padding: const EdgeInsets.all(8),
//                         child: Column(
//                           children: [
//                             Expanded(
//                               child: Image(
//                                 image: AssetImage(
//                                     "lib/assets/images/iphone-13-pro-max.png"),
//                               ),
//                             ),
//                             Text(
//                               "iPhone 13 Pro Max",
//                               style: TextStyle(
//                                 color: Colors.black,
//                                 backgroundColor: Colors.transparent,
//                               ),
//                               textAlign: TextAlign.center,
//                             ),
//                             Text(
//                               "10000\$",
//                               style: TextStyle(
//                                 color: Colors.black,
//                                 backgroundColor: Colors.transparent,
//                               ),
//                               textAlign: TextAlign.center,
//                             ),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                               children: [
//                                 ElevatedButton(
//                                     onPressed: onPressed,
//                                     style: ElevatedButton.styleFrom(
//                                         primary: Colors.black,
//                                         textStyle: const TextStyle()),
//                                     child: const Text("Katıl")),
//                                 ElevatedButton(
//                                     style: ElevatedButton.styleFrom(
//                                         primary: Colors.black,
//                                         textStyle: const TextStyle()),
//                                     onPressed: onPressed,
//                                     child: const Text("Detay")),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                       Container(
//                         decoration: BoxDecoration(
//                             border: Border.all(width: 1, color: Colors.black),
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(10)),
//                         padding: const EdgeInsets.all(8),
//                         child: Column(
//                           children: [
//                             Expanded(
//                               child: Image(
//                                 image: AssetImage(
//                                     "lib/assets/images/iphone-13-pro-max.png"),
//                               ),
//                             ),
//                             Text(
//                               "iPhone 13 Pro Max",
//                               style: TextStyle(
//                                 color: Colors.black,
//                                 backgroundColor: Colors.transparent,
//                               ),
//                               textAlign: TextAlign.center,
//                             ),
//                             Text(
//                               "10000\$",
//                               style: TextStyle(
//                                   color: Colors.black,
//                                   backgroundColor: Colors.transparent),
//                               textAlign: TextAlign.center,
//                             ),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                               children: [
//                                 ElevatedButton(
//                                     onPressed: onPressed,
//                                     style: ElevatedButton.styleFrom(
//                                         primary: Colors.black,
//                                         textStyle: const TextStyle()),
//                                     child: const Text("Katıl")),
//                                 ElevatedButton(
//                                     style: ElevatedButton.styleFrom(
//                                         primary: Colors.black,
//                                         textStyle: const TextStyle()),
//                                     onPressed: onPressed,
//                                     child: const Text("Detay")),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 bottomNavigationBar: CustomBNB()),
//           ],
//         ),
//       ),
//     );
//}
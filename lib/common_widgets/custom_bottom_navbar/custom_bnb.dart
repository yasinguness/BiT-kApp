import 'package:bitik_mobile_app/common_widgets/custom_bottom_navbar/custom_bnb_tab.dart';
import 'package:bitik_mobile_app/pages/account/page/account_page.dart';
import 'package:bitik_mobile_app/pages/home/page/home_page.dart';
import 'package:bitik_mobile_app/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:page_transition/page_transition.dart';

// class CustomBNB extends StatefulWidget {
//   CustomBNB({Key? key}) : super(key: key);

//   @override
//   _CustomBNBState createState() => _CustomBNBState();
// }

// class _CustomBNBState extends State<CustomBNB> {
//   int _selectedIndex = 0;

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//       items: <BottomNavigationBarItem>[
//         BottomNavigationBarItem(
//           icon: FaIcon(
//             FontAwesomeIcons.home,
//           ),
//           label: 'Anasayfa',
//           backgroundColor: HexColor("fafafa"),
//         ),
//         BottomNavigationBarItem(
//           icon: FaIcon(
//             FontAwesomeIcons.bars,
//           ),
//           label: 'Kategoriler',
//           backgroundColor: HexColor("fafafa"),
//         ),
//         BottomNavigationBarItem(
//           icon: FaIcon(
//             FontAwesomeIcons.gift,
//           ),
//           label: 'Çekilişler',
//           backgroundColor: HexColor("fafafa"),
//         ),
//         BottomNavigationBarItem(
//           icon: FaIcon(
//             FontAwesomeIcons.userAlt,
//           ),
//           label: 'Hesap',
//           backgroundColor: HexColor("fafafa"),
//         ),
//       ],
//       currentIndex: _selectedIndex,
//       unselectedIconTheme: IconThemeData(color: HexColor("878787")),
//       unselectedItemColor: HexColor("878787"),
//       selectedItemColor: Colors.black,
//       selectedIconTheme: IconThemeData(color: Colors.black),
//       onTap: _onItemTapped,
//     );
//   }
// }

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final AllTabs selectedMenu;

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int selectedIndex = 0;
  void onTapNavbarTab(int selectedIndex) {
    setState(() {
      this.selectedIndex = selectedIndex;
    });
    switch (this.selectedIndex) {
      case 0:
        {
          Navigator.of(context).push(CupertinoPageRoute(
            builder: (builder) => HomePage(),
          ));
        }
        break;
      case 1:
        {}
        break;
      case 2:
        {
          Navigator.of(context).push(CupertinoPageRoute(
            builder: (builder) => AccountPage(),
          ));
        }
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,

        boxShadow: [
          BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 20),
        ],
        // boxShadow: [
        //   BoxShadow(
        //     offset: Offset(0, -15),
        //     color: Color(0xFFDADADA).withOpacity(0.15),
        //   ),
        // ],
      ),
      child: SafeArea(
          top: false,
          child: ClipRRect(
            // borderRadius: BorderRadius.only(
            //   topLeft: Radius.circular(30),
            //   topRight: Radius.circular(30),
            // ),
            child: BottomNavigationBar(
              backgroundColor: HexColor("#121212"),
              showSelectedLabels: false,
              showUnselectedLabels: false,
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                  label: "",
                  icon: Icon(Icons.home,
                      color: AllTabs.Home == widget.selectedMenu
                          ? HexColor("2D4263")
                          : Colors.black54),
                ),
                BottomNavigationBarItem(
                  label: "",
                  icon: Icon(Icons.card_giftcard, color: Colors.black54),
                ),
                BottomNavigationBarItem(
                  label: "",
                  icon: Icon(Icons.person,
                      color: AllTabs.Account == widget.selectedMenu
                          ? HexColor("2D4263")
                          : Colors.black54),
                ),
                // onPressed: () => Navigator.of(context)
                //     .push(CupertinoPageRoute(builder: (context) => HomePage())),
              ],
              onTap: onTapNavbarTab,
            ),
          )),
    );
  }
}

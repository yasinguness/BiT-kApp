import 'package:bitik_mobile_app/common_widgets/custom_bottom_navbar/custom_bnb_tab.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

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
  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
      ),
      child: SafeArea(
          child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.only(top: 1, bottom: 0),
              margin: EdgeInsets.only(bottom: 0),
              child: FaIcon(
                FontAwesomeIcons.home,
                size: 22,
              ),
            ),
            label: '',
            backgroundColor: HexColor("fafafa"),
          ),
          // BottomNavigationBarItem(
          //   icon: FaIcon(
          //     FontAwesomeIcons.bars,
          //   ),
          //   label: 'Kategoriler',
          //   backgroundColor: HexColor("fafafa"),
          // ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.gift,
              size: 22,
            ),
            label: '',
            backgroundColor: HexColor("fafafa"),
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.userAlt,
              size: 22,
            ),
            label: '',
            backgroundColor: HexColor("fafafa"),
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedIconTheme: IconThemeData(color: HexColor("878787")),
        unselectedItemColor: HexColor("878787"),
        selectedItemColor: HexColor("c299c0"),
        selectedIconTheme: IconThemeData(color: HexColor("c299c0")),
        onTap: _onItemTapped,
      )),
    );
  }
}

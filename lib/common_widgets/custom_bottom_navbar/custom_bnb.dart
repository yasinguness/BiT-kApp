import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomBNB extends StatefulWidget {
  CustomBNB({Key? key}) : super(key: key);

  @override
  _CustomBNBState createState() => _CustomBNBState();
}

class _CustomBNBState extends State<CustomBNB> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Anasayfa',
      style: optionStyle,
    ),
    Text(
      'Index 1: Kategoriler',
      style: optionStyle,
    ),
    Text(
      'Index 2: Çekilişler',
      style: optionStyle,
    ),
    Text(
      'Index 3: Hesap',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Anasayfa',
          backgroundColor: HexColor("1F1F39"),
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.alignJustify),
          label: 'Kategoriler',
          backgroundColor: HexColor("1F1F39"),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.campaign),
          label: 'Çekilişler',
          backgroundColor: HexColor("1F1F39"),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_box_rounded),
          label: 'Hesap',
          backgroundColor: HexColor("1F1F39"),
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.white,
      onTap: _onItemTapped,
    );
  }
}

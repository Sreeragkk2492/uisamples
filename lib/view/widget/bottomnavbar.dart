import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uisamples/view/homepage.dart';
import 'package:uisamples/view/utils/appcolors.dart';

class Bottomnavbar extends StatefulWidget {
  const Bottomnavbar({super.key});

  @override
  State<Bottomnavbar> createState() => _BottomnavbarState();
}

class _BottomnavbarState extends State<Bottomnavbar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    Homepage(),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: hah',
      style: optionStyle,
    ),
    const Text(
      'Index 3: hah',
      style: optionStyle,
    ),
    Text(
      'Index 3: hah',
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
    return Scaffold(
      extendBody: true,
      backgroundColor: Appcolor.bottombarcolor,
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: Container(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Appcolor.maincolor,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(
                    FontAwesomeIcons.house,
                    size: 16,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    FontAwesomeIcons.bagShopping,
                    size: 16,
                  ),
                  label: 'hhh',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    FontAwesomeIcons.heart,
                    size: 16,
                  ),
                  label: 'Business',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    FontAwesomeIcons.user,
                    size: 16,
                  ),
                  label: 'Bus',
                ),
              ],
              currentIndex: _selectedIndex,
              selectedItemColor: Appcolor.iconcolor,
              onTap: _onItemTapped,
              unselectedItemColor: Appcolor.unselectediconcolor,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              //  fixedColor: Theme.of(context).appBarTheme.backgroundColor,
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class BottomAppbar extends StatefulWidget {
  const BottomAppbar({Key? key}) : super(key: key);

  @override
  State<BottomAppbar> createState() => _BottomAppbarState();
}

class _BottomAppbarState extends State<BottomAppbar> {
  int _selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        backgroundColor: Colors.grey.shade900,
        elevation: 0,
        iconSize: 27,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        selectedItemColor: Colors.yellow.shade600,
        selectedFontSize: 18,
        unselectedItemColor: Colors.grey.shade600,
        unselectedFontSize: 18,
        currentIndex: _selectedIndex,
        onTap: (index){
          setState(() {
            _selectedIndex=index;
          });
        },
       type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: "Home",
              tooltip: "Home",
              backgroundColor: Colors.grey.shade900),
          BottomNavigationBarItem(
              icon: Icon(Icons.search), label: "Search",
              backgroundColor: Colors.grey.shade900
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_rounded), label: "Favorite",
              backgroundColor: Colors.grey.shade900),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_rounded), label: "Profile",
              backgroundColor: Colors.grey.shade900),
        ]);
  }
}

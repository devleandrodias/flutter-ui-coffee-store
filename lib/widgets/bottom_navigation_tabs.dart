import 'package:flutter/material.dart';

class BottomNavigationTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 1,
      selectedItemColor: Color.fromRGBO(194, 142, 121, 1),
      showSelectedLabels: false,
      backgroundColor: Colors.white,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Color.fromRGBO(194, 142, 121, 0.3),
          ),
          title: Text('home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.location_on,
            color: Color.fromRGBO(194, 142, 121, 0.3),
          ),
          title: Text('location'),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.free_breakfast,
            color: Color.fromRGBO(194, 142, 121, 0.3),
          ),
          title: Text('coffee'),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            color: Color.fromRGBO(194, 142, 121, 0.3),
          ),
          title: Text('user'),
        ),
      ],
    );
  }
}

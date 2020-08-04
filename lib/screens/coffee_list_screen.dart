import 'package:coffee_store/components/coffee-list.dart';
import 'package:flutter/material.dart';

class CoffeeListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Icon(Icons.sort),
          Icon(Icons.search),
        ],
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(28, 5, 25, 0),
              child: Container(
                child: Text(
                  'It\'s Great Day for Coffee.',
                  style: TextStyle(
                    fontSize: 36,
                    fontFamily: 'Sen',
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
            CoffeeList(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
      ),
    );
  }
}

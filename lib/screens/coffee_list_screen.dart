import 'package:coffee_store/models/coffee.dart';
import 'package:coffee_store/widgets/bottom_navigation_tabs.dart';
import 'package:coffee_store/widgets/coffee_options_list.dart';
import 'package:coffee_store/widgets/drawer_main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CoffeeListScreen extends StatelessWidget {
  final List<Coffee> _coffeeList = const [
    Coffee(
      title: 'Expresso',
      iconUrl: 'assets/icons/icon-coffee-expresso.svg',
    ),
    Coffee(
      title: 'Cappuccino',
      iconUrl: 'assets/icons/icon-coffee-cappuccino.svg',
    ),
    Coffee(
      title: 'Macchiato',
      iconUrl: 'assets/icons/icon-coffee-macchiato.svg',
    ),
    Coffee(
      title: 'Mocha',
      iconUrl: 'assets/icons/icon-coffee-mocha.svg',
    ),
    Coffee(
      title: 'Latte',
      iconUrl: 'assets/icons/icon-coffee-latte.svg',
    ),
  ];

  Widget _appBar = AppBar(
    leading: IconButton(
      icon: Icon(
        Icons.sort,
        size: 30,
      ),
      onPressed: () {},
    ),
    actions: <Widget>[
      Container(
        padding: EdgeInsets.symmetric(
          horizontal: 25,
        ),
        child: IconButton(
          icon: Icon(
            Icons.search,
            size: 30,
          ),
          onPressed: () {},
        ),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: _appBar,
      drawer: MainDrawer(),
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  'It\'s Great ',
                  style: TextStyle(
                    fontSize: 35,
                    fontFamily: 'Sen',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'Day for ',
                  style: TextStyle(
                    fontSize: 35,
                    fontFamily: 'Sen',
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(185, 136, 117, 1),
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Text(
                  'Coffee.',
                  style: TextStyle(
                    fontSize: 35,
                    fontFamily: 'Sen',
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(185, 136, 117, 1),
                  ),
                )
              ],
            ),
            Container(
              height: size.height * 0.7,
              child: CoffeeOptionsList(_coffeeList),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationTabs(),
    );
  }
}

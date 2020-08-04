import 'package:coffee_store/models/coffee.dart';
import 'package:coffee_store/widgets/coffee_options_list.dart';
import 'package:flutter/material.dart';

class CoffeeListScreen extends StatelessWidget {
  final List<Coffee> _coffeeList = [
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
    actions: <Widget>[
      Icon(Icons.sort),
      Icon(Icons.search),
    ],
  );

  Widget _principalTitle = Padding(
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
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: _appBar,
      backgroundColor: Theme.of(context).primaryColor,
      body: CoffeeOptionsList(_coffeeList),
      bottomNavigationBar: null,
    );
  }
}

import 'package:flutter/material.dart';

import 'coffee-card.dart';

class CoffeeList extends StatelessWidget {
  static final String basePath = 'assets/icons/icon-coffee';

  final List<CoffeeCard> coffeeList = [
    CoffeeCard(
      coffee: 'Expresso',
      imagePath: 'assets/icons/icon-coffee-expresso.svg',
    ),
    CoffeeCard(
      coffee: 'Cappuccino',
      imagePath: 'assets/icons/icon-coffee-cappuccino.svg',
    ),
    CoffeeCard(
      coffee: 'Macchiato',
      imagePath: 'assets/icons/icon-coffee-macchiato.svg',
    ),
    CoffeeCard(
      coffee: 'Mocha',
      imagePath: 'assets/icons/icon-coffee-mocha.svg',
    ),
    CoffeeCard(
      coffee: 'Latte',
      imagePath: 'assets/icons/icon-coffee-latte.svg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[...coffeeList],
        ),
      ),
    );
  }
}

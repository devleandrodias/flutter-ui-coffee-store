import 'package:coffee_store/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeOptionItem extends StatelessWidget {
  final Coffee coffee;

  CoffeeOptionItem(this.coffee);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[Text(coffee.title)],
    );
  }
}

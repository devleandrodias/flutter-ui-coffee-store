import 'package:coffee_store/models/coffee.dart';
import 'package:coffee_store/widgets/coffee_option_item.dart';
import 'package:flutter/material.dart';

class CoffeeOptionsList extends StatelessWidget {
  final List<Coffee> coffees;

  const CoffeeOptionsList(this.coffees);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: coffees.length,
      itemBuilder: (ctx, index) {
        final coffee = coffees[index];
        return CoffeeOptionItem(coffee);
      },
    );
  }
}

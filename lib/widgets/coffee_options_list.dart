import 'package:coffee_store/models/coffee.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CoffeeOptionsList extends StatelessWidget {
  final List<Coffee> coffees;

  const CoffeeOptionsList(this.coffees);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: coffees.length,
      itemBuilder: (ctx, index) {
        final coffee = coffees[index];
        return ListTile(
          leading: SvgPicture.asset(coffee.iconUrl),
          title: Text(
            coffee.title,
            style: Theme.of(context).textTheme.headline6,
            textAlign: TextAlign.center,
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 15,
          ),
        );
      },
    );
  }
}

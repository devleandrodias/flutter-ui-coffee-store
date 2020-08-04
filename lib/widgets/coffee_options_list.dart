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
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 35,
          ),
          child: ListTile(
            leading: Container(
              width: 90,
              child: SvgPicture.asset(
                coffee.iconUrl,
              ),
            ),
            title: Text(
              coffee.title,
              style: Theme.of(context).textTheme.headline6,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 15,
              color: Color.fromRGBO(198, 154, 128, 1),
            ),
          ),
        );
      },
    );
  }
}

import 'package:coffee_store/models/coffee.dart';
import 'package:coffee_store/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CoffeeOptionItem extends StatelessWidget {
  final Coffee coffee;

  CoffeeOptionItem(this.coffee);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.brown[100],
      onTap: () {
        Navigator.of(context).pushNamed(
          AppRoutes.COFFEE_DETAIL,
          arguments: coffee,
        );
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 30),
        child: ListTile(
          leading: Container(
            alignment: Alignment.centerLeft,
            width: 90,
            child: SvgPicture.asset(
              coffee.iconUrl,
            ),
          ),
          title: Text(
            coffee.title,
            style: Theme.of(context).textTheme.headline6,
            textAlign: TextAlign.start,
          ),
          trailing: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Icon(
              Icons.arrow_forward_ios,
              size: 15,
              color: Color.fromRGBO(198, 154, 128, 1),
            ),
          ),
        ),
      ),
    );
  }
}

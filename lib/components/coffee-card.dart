import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CoffeeCard extends StatelessWidget {
  final String coffee;
  final String imagePath;

  CoffeeCard({
    @required this.coffee,
    @required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).primaryColor,
      elevation: 0,
      child: Container(
        padding: EdgeInsets.all(30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SvgPicture.asset(imagePath),
            Text(coffee),
            Icon(
              Icons.arrow_forward_ios,
              color: Color.fromRGBO(198, 154, 128, 1),
              size: 18,
            ),
          ],
        ),
      ),
    );
  }
}

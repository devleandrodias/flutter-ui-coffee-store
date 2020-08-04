import 'package:coffee_store/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final coffee = ModalRoute.of(context).settings.arguments as Coffee;
    return Scaffold(
      appBar: AppBar(
        title: Text(coffee.title),
      ),
    );
  }
}

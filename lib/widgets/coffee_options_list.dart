import 'package:coffee_store/data/coffee_list_data.dart';
import 'package:flutter/material.dart';

class CoffeeOptionsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: coffeeListData.length,
      itemBuilder: (ctx, index) {
        return Card(
          child: Text('teste'),
        );
      },
    );
  }
}

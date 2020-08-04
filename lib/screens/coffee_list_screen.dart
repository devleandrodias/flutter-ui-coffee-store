import 'package:coffee_store/widgets/coffee_options_list.dart';
import 'package:flutter/material.dart';

class CoffeeListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Icon(Icons.sort),
          Icon(Icons.search),
        ],
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
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
            ),
            // CoffeeOptionsList(),
          ],
        ),
      ),
      bottomNavigationBar: null,
    );
  }
}

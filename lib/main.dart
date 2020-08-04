import 'package:coffee_store/screens/coffee_list_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(CoffeeShopApp());

class CoffeeShopApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee Store',
      home: CoffeeListScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color.fromRGBO(250, 244, 238, 1),
        appBarTheme: AppBarTheme(
          color: Color.fromRGBO(250, 244, 238, 1),
          elevation: 0,
        ),
        textTheme: ThemeData.light().textTheme.copyWith(
              headline6: TextStyle(
                color: Color.fromRGBO(45, 20, 13, 1),
                fontFamily: 'Sen',
              ),
            ),
      ),
    );
  }
}

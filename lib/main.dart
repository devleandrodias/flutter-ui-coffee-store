import 'package:flutter/material.dart';
import 'components/coffee-list.dart';

void main() => runApp(CoffeeShopApp());

class CoffeeShopApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee Store',
      home: MyHomePage(),
      theme: ThemeData(
        primaryColor: Color.fromRGBO(250, 244, 238, 1),
        appBarTheme: AppBarTheme(
          color: Color.fromRGBO(250, 244, 238, 1),
          elevation: 0,
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
      body: Column(
        children: <Widget>[
          Text('It\'s Great Day for Coffee.'),
          CoffeeList(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text(''),
          ),
        ],
      ),
    );
  }
}

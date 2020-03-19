import 'package:animations_poc/menu.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Menu(),
        appBar: AppBar(
          title: Text('Animation Examples'),
        ),
        body: Center(
          child: Text('Use the menu to navigate through the examples.'),
        ),
      ),
    );
  }
}

Future<void> main() async => runApp(MyApp());

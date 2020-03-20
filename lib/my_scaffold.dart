import 'package:animations_poc/menu.dart';
import 'package:flutter/material.dart';

class MyScaffold extends StatelessWidget {
  final Widget body;
  final Widget title;

  MyScaffold({
    @required this.body,
    @required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: title,
      ),
      drawer: Menu(),
      body: body,
    );
  }
}

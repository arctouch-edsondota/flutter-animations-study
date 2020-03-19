import 'dart:math';

import 'package:animations_poc/menu.dart';
import 'package:flutter/material.dart';

double randomBorderRadius() => Random().nextDouble() * 64;

double randomMargin() => Random().nextDouble() * 64;

Color randomColor() => Color(0xFFFFFFFF & Random().nextInt(0XFFFFFFFF));

class ShapeShiftingRoute extends StatefulWidget {
  @override
  _ShapeShiftingRouteState createState() => _ShapeShiftingRouteState();
}

class _ShapeShiftingRouteState extends State<ShapeShiftingRoute> {
  Color color;
  double borderRadius;
  double margin;

  @override
  void initState() {
    super.initState();
    color = randomColor();
    borderRadius = randomBorderRadius();
    margin = randomMargin();
  }

  void change() => setState(() {
        color = randomColor();
        borderRadius = randomBorderRadius();
        margin = randomMargin();
      });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Menu(),
        appBar: AppBar(
          title: Text('Shape-shifting exame'),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(
                  width: 128.0,
                  height: 128.0,
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOutBack,
                    margin: EdgeInsets.all(margin),
                    decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(borderRadius),
                    ),
                  ),
                ),
                MaterialButton(
                  color: Theme.of(context).primaryColor,
                  child: Text(
                    'Change',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () => change(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

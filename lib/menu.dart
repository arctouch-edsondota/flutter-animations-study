import 'package:animations_poc/examples/animated_opacity_example.dart';
import 'package:animations_poc/examples/shape_shifting_example.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Animations'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('Animated Opacity'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => AnimatedOpacityRoute())),
          ),
          ListTile(
            title: Text('Shape-shifting effect'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ShapeShiftingRoute())),
          ),
        ],
      ),
    );
  }
}

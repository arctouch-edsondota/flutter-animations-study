import 'package:animations_poc/animated_opacity_example.dart';
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
        ],
      ),
    );
  }
}

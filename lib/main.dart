import 'package:animations_poc/examples/animated_opacity_example.dart';
import 'package:animations_poc/examples/animation_controller_example.dart';
import 'package:animations_poc/my_scaffold.dart';
import 'package:animations_poc/examples/shape_shifting_example.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeRoute.routeName,
      routes: {
        HomeRoute.routeName: (context) => HomeRoute(),
        ShapeShiftingRoute.routeName: (context) => ShapeShiftingRoute(),
        AnimatedOpacityRoute.routeName: (context) => AnimatedOpacityRoute(),
        AnimationControllerRoute.routeName: (context) => AnimationControllerRoute(),
      },
    );
  }
}

class HomeRoute extends StatelessWidget {
  static String routeName = 'home_route';
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      title: Text('Animation Examples'),
      body: Center(
        child: Text('Use the menu to navigate through the examples.'),
      ),
    );
  }
}

Future<void> main() async => runApp(MyApp());

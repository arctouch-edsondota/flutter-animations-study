import 'package:animations_poc/my_scaffold.dart';
import 'package:flutter/material.dart';

class AnimationControllerRoute extends StatefulWidget {
  static String routeName = 'animation_controller_route';

  @override
  _AnimationControllerRouteState createState() => _AnimationControllerRouteState();
}

class _AnimationControllerRouteState extends State<AnimationControllerRoute> with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    )..addStatusListener((state) {
        if (state == AnimationStatus.completed) {
          controller.reverse();
        }
        if (state == AnimationStatus.dismissed) {
          controller.forward();
        }
      });
    animation = Tween<double>(begin: 0.0, end: 300.0).animate(controller);
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      title: Text('Animation controller'),
      body: Center(
        child: AnimatedLogo(
          animation: animation,
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}

class AnimatedLogo extends AnimatedWidget {
  AnimatedLogo({Key key, Animation<double> animation}) : super(key: key, listenable: animation);

  @override
  Widget build(BuildContext context) {
    final animation = listenable as Animation<double>;

    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10.0),
        height: animation.value,
        width: animation.value,
        child: FlutterLogo(),
      ),
    );
  }
}

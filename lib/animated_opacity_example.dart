import 'package:animations_poc/menu.dart';
import 'package:flutter/material.dart';

const owl_url = 'https://raw.githubusercontent.com/flutter/website/master/src/images/owl.jpg';

class AnimatedOpacityRoute extends StatefulWidget {
  @override
  _AnimatedOpacityRouteState createState() => _AnimatedOpacityRouteState();
}

class _AnimatedOpacityRouteState extends State<AnimatedOpacityRoute> {
  double opacity = 0.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Menu(),
        appBar: AppBar(
          title: Text('Animated Opacity'),
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Image.network(owl_url),
              MaterialButton(
                child: Text(
                  'Show details',
                  style: TextStyle(color: Colors.blueAccent),
                ),
                onPressed: () => setState(() {
                  opacity = 1;
                }),
              ),
              AnimatedOpacity(
                duration: Duration(seconds: 2),
                opacity: opacity,
                child: Column(
                  children: <Widget>[
                    Text('Type: Owl'),
                    Text('Age: 39'),
                    Text('Employment: None'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

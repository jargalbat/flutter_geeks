import 'package:flutter/material.dart';

class DemoOpacity extends StatefulWidget {
  @override
  _DemoOpacityState createState() => _DemoOpacityState();
}

class _DemoOpacityState extends State<DemoOpacity> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 20.0),
        Opacity(
          opacity: 1.0,
          child: const Text("Now you see me, now you don't!"),
        ),
        Opacity(
          opacity: 0.5,
          child: const Text("Now you see me, now you don't!"),
        ),
        SizedBox(height: 20.0),
        Image.network(
          'https://raw.githubusercontent.com/flutter/assets-for-api-docs/master/packages/diagrams/assets/blend_mode_destination.jpeg',
          color: Color.fromRGBO(255, 255, 255, 0.5),
          colorBlendMode: BlendMode.modulate,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class DemoSafeArea extends StatefulWidget {
  @override
  _DemoSafeAreaState createState() => _DemoSafeAreaState();
}

class _DemoSafeAreaState extends State<DemoSafeArea> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.topLeft,
        child: SafeArea(
          left: true,
          top: true,
          right: true,
          bottom: true,
          minimum: const EdgeInsets.all(16.0),
          child: Text('My Widget: This is my widget. It has some content that I don\'t want '
              'blocked by certain manufacturers who add notches, holes, and round corners.'),
        ),
      ),
    );
  }
}

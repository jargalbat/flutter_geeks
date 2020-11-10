import 'package:flutter/material.dart';

class DemoSafeAreaRoute extends StatefulWidget {
  @override
  _DemoSafeAreaRouteState createState() => _DemoSafeAreaRouteState();
}

class _DemoSafeAreaRouteState extends State<DemoSafeAreaRoute> {
  final _homeKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _homeKey,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(height: 1.0, color: Colors.red),
            ],
          ),
        ),
      ),
    );
  }
}

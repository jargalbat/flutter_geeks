import 'package:flutter/material.dart';
import 'package:flutter_geeks/widgets/app_bar.dart';

class HomeRoute extends StatefulWidget {
  @override
  _HomeRouteState createState() => _HomeRouteState();
}

class _HomeRouteState extends State<HomeRoute> {
  final _homeKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _homeKey,
      appBar: AppBarEmpty(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Container(height: 1.0, color: Colors.red),
          ],
        ),
      ),
    );
  }
}

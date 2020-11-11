import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_geeks/modules/home/home_route.dart';

void main() {
  runApp(MyApp());

  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      // systemNavigationBarColor: Colors.blue, // navigation bar color
      // statusBarColor: Colors.pink, // status bar color
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Geeks',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeRoute(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_geeks/modules/widget_demos/demo_safe_area_route.dart';
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _cardItem('SafeArea', () => Navigator.push(context, MaterialPageRoute(builder: (context) => DemoSafeAreaRoute()))),
          ],
        ),
      ),
    );
  }

  Widget _cardItem(String text, Function onTap) {
    return Card(
      margin: EdgeInsets.all(20.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Row(
            children: [
              Text(text),
            ],
          ),
        ),
      ),
    );
  }
}

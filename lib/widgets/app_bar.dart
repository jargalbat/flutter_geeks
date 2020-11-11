import 'package:flutter/material.dart';

class AppBarEmpty extends PreferredSize {
  @override
  Size get preferredSize => Size.fromHeight(0.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      elevation: 0.0, // Өндөрлөлт, сүүдэр
      brightness: Brightness.light,
    );
  }
}

class AppBarCustom extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  final String title;

  AppBarCustom(this.title, {Key key})
      : preferredSize = Size.fromHeight(50.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(color: Colors.black),
      ),
      backgroundColor: Colors.white,
      automaticallyImplyLeading: true,
    );
  }
}

// ignore: non_constant_identifier_names
Widget AppBarEmpty2({
  BuildContext context,
  Brightness brightness,
  Color backgroundColor,
  double elevation,
}) {
  return PreferredSize(
    preferredSize: Size.fromHeight(0.0), // here the desired height
    child: AppBar(
      backgroundColor: Colors.white,
      brightness: brightness,
      leading: Container(),
      elevation: elevation ?? 0.0,
      actions: <Widget>[],
    ),
  );
}

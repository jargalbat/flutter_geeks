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

  AppBarCustom(
    this.title, {
    Key key,
  })  : preferredSize = Size.fromHeight(50.0),
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

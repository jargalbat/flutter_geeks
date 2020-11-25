import 'package:flutter/material.dart';

class EmptyAppBar extends PreferredSize {
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

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  CustomAppBar({
    this.title,
    this.brightness = Brightness.light,
    this.backgroundColor,
    Key key,
  })  : preferredSize = Size.fromHeight(50.0),
        super(key: key);

  final String title;
  final Brightness brightness;
  final Color backgroundColor;

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title != null ? Text(title) : null,
      brightness: brightness,
      backgroundColor: backgroundColor,
      // automaticallyImplyLeading: true,
    );
  }
}

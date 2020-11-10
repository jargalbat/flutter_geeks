import 'package:flutter/material.dart';

class AppBarEmpty extends PreferredSize {
  @override
  Size get preferredSize => Size.fromHeight(0.0);

  @override
  Widget build(BuildContext context) {
    return AppBar();
  }
}

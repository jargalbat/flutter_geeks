import 'package:flutter/material.dart';

void showSnackBar({
  @required GlobalKey<ScaffoldState> key,
  @required String text,
  Duration duration,
}) {
  key.currentState
    ..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        duration: duration ?? Duration(milliseconds: 4000),
        content: Text(text, softWrap: true, textAlign: TextAlign.center),
      ),
    );
}

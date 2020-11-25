import 'package:flutter/material.dart';

class ImageButton extends StatelessWidget {
  const ImageButton({
    Key key,
    @required this.assetName,
    this.onPressed,
    this.margin,
    this.imageHeight,
    this.imageWidth,
  }) : super(key: key);

  final String assetName;
  final Function onPressed;
  final EdgeInsets margin;
  final double imageHeight;
  final double imageWidth;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      splashColor: Colors.transparent,
      child: Container(
        margin: margin ?? EdgeInsets.zero,
        child: Image.asset(
          assetName,
          height: imageHeight,
          width: imageWidth,
        ),
      ),
    );
  }
}

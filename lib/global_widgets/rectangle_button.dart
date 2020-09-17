import 'package:flutter/material.dart';

class RectangleButton extends StatelessWidget {
  final Function onPressed;
  final Widget child;
  final Color buttonColor;
  final double elevation;

  RectangleButton({
    @required this.onPressed,
    this.child,
    this.buttonColor,
    this.elevation = 0,
  });

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: MediaQuery.of(context).size.width,
      height: 50.0,
      child: RaisedButton(
        onPressed: onPressed,
        elevation: elevation,
        child: child,
        color: buttonColor,
      ),
    );
  }
}

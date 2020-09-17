import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';

Widget registrationLink() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: <Widget>[
      Text(
        'Don\'t have an account yet?',
        style: TextStyle(
          fontFamily: 'FuturaStd',
          fontWeight: FontWeight.w500,
          fontSize: 16.0,
        ),
      ),
      SizedBox(width: 5.0),
      GestureDetector(
        onTap: () {
          print('Tapped');
        },
        child: Row(
          children: <Widget>[
            Text(
              'Register here',
              style: TextStyle(
                fontFamily: 'FuturaStd',
                fontWeight: FontWeight.w500,
                fontSize: 16.0,
                decoration: TextDecoration.underline,
              ),
            ),
            Icon(OMIcons.arrowForward),
          ],
        ),
      ),
    ],
  );
}

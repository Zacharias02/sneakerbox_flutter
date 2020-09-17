import 'package:flutter/material.dart';

Widget divider() {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 30.0),
    child: Row(
      children: <Widget>[
        Expanded(
          child: Container(
            child: Divider(
              color: Colors.black,
              endIndent: 15.0,
            ),
          ),
        ),
        Text(
          'OR',
          style: TextStyle(
            fontFamily: 'FuturaStd',
            fontWeight: FontWeight.w500,
            fontSize: 16.0,
          ),
        ),
        Expanded(
          child: Container(
            child: Divider(
              color: Colors.black,
              indent: 15.0,
            ),
          ),
        ),
      ],
    ),
  );
}

import 'package:flutter/material.dart';

class ForgotPasswordLink extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        SizedBox(height: 10.0),
        GestureDetector(
          onTap: () {
            print('Tapped!');
          },
          child: Text(
            'Forgot password',
            style: TextStyle(
              fontFamily: 'FuturaStd',
              fontSize: 14.0,
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}

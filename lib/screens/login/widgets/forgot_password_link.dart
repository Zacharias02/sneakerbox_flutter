import 'package:flutter/material.dart';
import 'package:sneakerbox_flutter/screens/login/widgets/reactive_login_form.dart';

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
        Padding(
          padding: EdgeInsets.symmetric(vertical: 30.0),
          child: MySubmitButton(),
        ),
      ],
    );
  }
}

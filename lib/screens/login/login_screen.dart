import 'package:flutter/material.dart';
import 'package:sneakerbox_flutter/global_widgets/rectangle_button.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 200.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/logos/sneakerbox.png'),
                ),
              ),
            ),
            SizedBox(height: 30.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                children: <Widget>[
                  RectangleButton(
                    onPressed: () {},
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.white),
                    ),
                    buttonColor: Colors.black,
                  ),
                  _divider(),
                  RectangleButton(
                    onPressed: () {},
                    child: Text(
                      'Login with Facebook',
                      style: TextStyle(color: Colors.white),
                    ),
                    buttonColor: Color(0xFF3B5998),
                  ),
                  SizedBox(height: 30.0),
                  RectangleButton(
                    onPressed: () {},
                    elevation: 1.0,
                    child: Text(
                      'Login with Google',
                      style: TextStyle(color: Colors.black),
                    ),
                    buttonColor: Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _divider() {
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
          Text('OR'),
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
}

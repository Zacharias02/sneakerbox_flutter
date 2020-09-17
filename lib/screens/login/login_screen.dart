import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
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
                      style: TextStyle(
                        fontFamily: 'FuturaStd',
                        fontWeight: FontWeight.w700,
                        fontSize: 16.0,
                        color: Colors.white,
                      ),
                    ),
                    buttonColor: Colors.black,
                  ),
                  _divider(),
                  RectangleButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SvgPicture.asset(
                          'assets/logos/svg/facebook.svg',
                          height: 25.0,
                        ),
                        SizedBox(width: 10.0),
                        Text(
                          'Login with Facebook',
                          style: TextStyle(
                            fontFamily: 'FuturaStd',
                            fontWeight: FontWeight.w700,
                            fontSize: 15.0,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    buttonColor: Color(0xFF3B5998),
                  ),
                  SizedBox(height: 30.0),
                  RectangleButton(
                    onPressed: () {},
                    elevation: 1.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SvgPicture.asset(
                          'assets/logos/svg/google.svg',
                          height: 25.0,
                        ),
                        SizedBox(width: 10.0),
                        Text(
                          'Login with Google',
                          style: TextStyle(
                            fontFamily: 'FuturaStd',
                            fontWeight: FontWeight.w700,
                            fontSize: 15.0,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                    buttonColor: Colors.white,
                  ),
                  SizedBox(height: 30.0),
                  _registrationLink(),
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

  Widget _registrationLink() {
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
          onTap: () {},
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
}

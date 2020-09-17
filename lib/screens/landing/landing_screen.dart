import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sneakerbox_flutter/global_widgets/rectangle_button.dart';
import 'package:sneakerbox_flutter/screens/landing/widgets/divider.dart';
import 'package:sneakerbox_flutter/screens/landing/widgets/registration_link.dart';

class LandingPage extends StatelessWidget {
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
                  divider(),
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
                  registrationLink(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

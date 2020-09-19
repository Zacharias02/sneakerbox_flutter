import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sneakerbox_flutter/screens/landing/landing_screen.dart';
import 'package:sneakerbox_flutter/screens/login/login_screen.dart';

class Routes {
  static const String landingScreen = '/landingScreen';
  static const String loginScreen = '/loginScreen';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case landingScreen:
        return PageTransition(
          child: LandingPage(),
          type: PageTransitionType.fade,
        );
      case loginScreen:
        return PageTransition(
          child: LoginScreen(),
          type: PageTransitionType.fade,
          curve: Curves.ease,
        );
      default:
        return PageTransition(
          child: Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
          type: PageTransitionType.fade,
        );
    }
  }
}

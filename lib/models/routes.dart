import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sneakerbox_flutter/screens/landing/landing_screen.dart';

class Routes {
  static const String landingPage = '/landingPage';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case landingPage:
        return PageTransition(
          child: LandingPage(),
          type: PageTransitionType.fade,
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

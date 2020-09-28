import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sneakerbox_flutter/screens/home/home_view.dart';
import 'package:sneakerbox_flutter/screens/landing/landing_screen.dart';
import 'package:sneakerbox_flutter/screens/login/login_screen.dart';
import 'package:sneakerbox_flutter/screens/registration/login_details_screen.dart';
import 'package:sneakerbox_flutter/screens/registration/personal_details_screen.dart';
import 'package:sneakerbox_flutter/screens/registration/shipment_details.dart';

class Routes {
  static const String landingScreen = '/landingScreen';
  static const String loginScreen = '/loginScreen';

  // Registration Screens
  static const String loginDetailsScreen = '/loginDetailsScreen';
  static const String personalDetailsScreen = '/personalDetailsScreen';
  static const String shipmentDetailScreen = '/shipmentDetailsScreen';
  static const String homePageView = '/homePageView';

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
      case loginDetailsScreen:
        return PageTransition(
          child: LoginDetailsScreen(),
          type: PageTransitionType.fade,
          curve: Curves.ease,
        );
      case personalDetailsScreen:
        return PageTransition(
          child: PersonalDetailsScreen(),
          type: PageTransitionType.rightToLeft,
          curve: Curves.ease,
        );
      case shipmentDetailScreen:
        return PageTransition(
            child: ShipmentdetailsScreen(),
            type: PageTransitionType.rightToLeft,
            curve: Curves.ease);
      case homePageView:
        return PageTransition(
            child: HomePageView(),
            type: PageTransitionType.rightToLeft,
            curve: Curves.ease);
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

import 'package:flutter/material.dart';
import 'package:flutter_onboard/flutter_onboard.dart';
import 'package:sneakerbox_flutter/global_widgets/rectangle_button.dart';
import 'package:sneakerbox_flutter/models/utils.dart';
import 'package:sneakerbox_flutter/screens/login/login_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  final PageController _pageController = PageController();
  final Utils utils = Utils();

  @override
  Widget build(BuildContext context) {
    return OnBoard(
      onBoardData: utils.onBoardData,
      pageController: _pageController,
      onSkip: () {
        print('skipped');
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoginScreen()),
        );
      },
      onDone: () {
        print('done tapped');
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoginScreen()),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_onboard/flutter_onboard.dart';
import 'package:sneakerbox_flutter/models/routes.dart';
import 'package:sneakerbox_flutter/models/utils.dart';

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
        Navigator.of(context).pushNamed(Routes.landingScreen);
      },
      onDone: () {
        print('done tapped');
        Navigator.of(context).pushNamed(Routes.landingScreen);
      },
    );
  }
}

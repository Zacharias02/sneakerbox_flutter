import 'package:flutter/material.dart';
import 'package:flutter_onboard/flutter_onboard.dart';
import 'package:sneakerbox_flutter/models/routes.dart';
import 'package:sneakerbox_flutter/models/utils.dart';
import 'package:provider/provider.dart';
import 'package:sneakerbox_flutter/screens/landing/landing_screen.dart';
import 'package:sneakerbox_flutter/screens/login/login_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  final PageController _pageController = PageController();
  final Utils utils = Utils();

  @override
  Widget build(BuildContext context) {
    return Provider<OnBoardState>(
      create: (_) => OnBoardState(),
      child: Scaffold(
        body: OnBoard(
          pageController: _pageController,
          onSkip: () {},
          onDone: () {},
          onBoardData: utils.onBoardData,
          titleStyles: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontFamily: 'FuturaStd',
            fontWeight: FontWeight.w700,
            letterSpacing: 0.15,
          ),
          descriptionStyles: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontFamily: 'FuturaStd',
            fontWeight: FontWeight.w500,
            letterSpacing: 0.15,
          ),
          pageIndicatorStyle: PageIndicatorStyle(
            width: 70,
            inactiveColor: Colors.grey,
            activeColor: Colors.black,
            inactiveSize: Size(8, 8),
            activeSize: Size(12, 12),
          ),
          skipButton: FlatButton(
            onPressed: () {
              Navigator.of(context).popAndPushNamed(Routes.landingScreen);
              print('skipped');
            },
            child: Text(
              "Skip",
              style: TextStyle(color: Colors.blueGrey[500]),
            ),
          ),
          nextButton: Consumer<OnBoardState>(
            builder: (BuildContext context, OnBoardState state, Widget child) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    height: 50,
                    width: 100,
                    alignment: Alignment.center,
                    child: Text(
                      'Swipe Left',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () => _onNextTap(state),
                    child: state.isLastPage
                        ? Container(
                            margin: EdgeInsets.only(right: 20),
                            child: Container(
                              width: 100,
                              height: 50,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [Colors.black, Colors.black87],
                                ),
                              ),
                              child: Text(
                                state.isLastPage ? "Done" : "Next",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          )
                        : Container(
                            margin: EdgeInsets.only(right: 20),
                            child: Container(
                              width: 100,
                              height: 50,
                              alignment: Alignment.center,
                              decoration:
                                  BoxDecoration(color: Colors.transparent),
                              child: Text(
                                state.isLastPage ? "Done" : "Next",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  void _onNextTap(OnBoardState onBoardState) {
    if (!onBoardState.isLastPage) {
      _pageController.animateToPage(
        onBoardState.page + 1,
        duration: Duration(milliseconds: 250),
        curve: Curves.easeInOutSine,
      );
    } else {
      print("done");
    }
  }
}

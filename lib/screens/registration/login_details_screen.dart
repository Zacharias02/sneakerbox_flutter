import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:sneakerbox_flutter/global_widgets/rectangle_button.dart';
import 'package:sneakerbox_flutter/models/routes.dart';
import 'package:sneakerbox_flutter/screens/registration/widgets/reactive_login_details_form.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class LoginDetailsScreen extends StatelessWidget {
  final form = FormGroup({
    'email': FormControl(
      validators: [Validators.required, Validators.email],
    ),
    'password': FormControl(validators: [
      Validators.required,
      Validators.minLength(8),
    ]),
    'confirmPassword': FormControl(),
  }, validators: [
    Validators.mustMatch('password', 'confirmPassword'),
  ]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Register',
          style: TextStyle(
            fontFamily: 'FuturaStd',
            fontSize: 20.0,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(
            OMIcons.arrowBackIos,
            color: Colors.white,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 25,
              ),
              StepProgressIndicator(
                totalSteps: 3,
                currentStep: 1,
                size: 36,
                padding: 20,
                selectedColor: Colors.black,
                unselectedColor: Colors.grey[200],
                customStep: (index, color, _) => color == Colors.black
                    ? Container(
                        color: color,
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            '1',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ),
                        ))
                    : index == 1
                        ? Container(
                            color: Colors.grey[200],
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                '2',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                              ),
                            ))
                        : Container(
                            color: color,
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                '3',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                              ),
                            )),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(15.0, 30.0, 0.0, 15.0),
                child: Text(
                  'Login details',
                  style: TextStyle(
                    fontFamily: 'FuturaStd',
                    fontSize: 25.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ),
              ReactiveLoginDetailsForm(form: form),
            ],
          ),
        ),
      ),
    );
  }
}

class NextButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final form = ReactiveForm.of(context);
    direct() {
      Navigator.of(context).popAndPushNamed(Routes.personalDetailsScreen);
    }

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 30.0),
      child: RectangleButton(
        onPressed: form.valid ? direct : null,
        child: Text(
          'Next',
          style: TextStyle(
            fontFamily: 'FuturaStd',
            fontWeight: FontWeight.w700,
            fontSize: 16.0,
            color: Colors.white,
          ),
        ),
        buttonColor: Colors.black,
      ),
    );
  }

  void _onPressed() {
    print('Hello Reactive Forms!!!');
  }
}

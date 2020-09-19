import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:sneakerbox_flutter/global_widgets/reactive_input_field.dart';
import 'package:sneakerbox_flutter/global_widgets/rectangle_button.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class RegistrationScreen extends StatelessWidget {
  final form = FormGroup({
    'email': FormControl(
      validators: [Validators.required, Validators.email],
    ),
    'password': FormControl(validators: [Validators.required]),
  });

  FormControl get password => this.form.control('password');
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
      body: Container(
        child: Column(
          children: <Widget>[
            StepProgressIndicator(
              totalSteps: 3,
              currentStep: 1,
              size: 8.0,
              padding: 0,
              selectedColor: Colors.blueAccent,
              unselectedColor: Colors.grey,
            ),
            ReactiveForm(
              formGroup: this.form,
              child: Column(
                children: <Widget>[
                  ReactiveInputField(
                    title: 'Email address',
                    formControlName: 'email',
                    keyboardType: TextInputType.emailAddress,
                    hintText: 'Enter email address',
                    validationMessages: {
                      'required': 'The email must not be empty',
                      'email': 'The email value must be a valid email',
                    },
                    textInputAction: TextInputAction.next,
                    onSubmitted: () => this.password.focus(),
                  ),
                  ReactiveInputField(
                    title: 'Email address',
                    formControlName: 'email',
                    keyboardType: TextInputType.emailAddress,
                    hintText: 'Enter email address',
                    validationMessages: {
                      'required': 'The email must not be empty',
                      'email': 'The email value must be a valid email',
                    },
                    textInputAction: TextInputAction.next,
                    onSubmitted: () => this.password.focus(),
                  ),
                  NextButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NextButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final form = ReactiveForm.of(context);
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 30.0),
      child: RectangleButton(
        onPressed: form.valid ? _onPressed : null,
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

import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:sneakerbox_flutter/global_widgets/reactive_input_field.dart';
import 'package:sneakerbox_flutter/screens/registration/login_details_screen.dart';

class ReactiveLoginDetailsForm extends StatefulWidget {
  const ReactiveLoginDetailsForm({@required this.form});

  final FormGroup form;

  @override
  _ReactiveLoginDetailsFormState createState() =>
      _ReactiveLoginDetailsFormState();
}

class _ReactiveLoginDetailsFormState extends State<ReactiveLoginDetailsForm> {
  bool obscureTextPassword = true;
  bool obscureTextConfirmPassword = true;
  Icon iconPassword = Icon(
    OMIcons.visibilityOff,
    color: Colors.grey,
  );
  Icon iconConfirmPassword = Icon(
    OMIcons.visibilityOff,
    color: Colors.grey,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: ReactiveForm(
        formGroup: widget.form,
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
              onSubmitted: () => widget.form.focus('password'),
            ),
            SizedBox(height: 15.0),
            ReactiveInputField(
              title: 'Password',
              formControlName: 'password',
              keyboardType: TextInputType.text,
              obscureText: obscureTextPassword,
              hintText: 'Enter password',
              suffixIcon: IconButton(
                icon: iconPassword,
                iconSize: 30.0,
                onPressed: () {
                  setState(() {
                    if (obscureTextPassword) {
                      obscureTextPassword = false;
                      iconPassword = Icon(
                        OMIcons.visibility,
                        color: Colors.grey,
                      );
                    } else {
                      obscureTextPassword = true;
                      iconPassword = Icon(
                        OMIcons.visibilityOff,
                        color: Colors.grey,
                      );
                    }
                  });
                },
              ),
              validationMessages: {
                'required': 'The password must not be empty',
                'minLength': 'The password must be at least 8 characters',
              },
              textInputAction: TextInputAction.next,
              onSubmitted: () => widget.form.focus('confirmPassword'),
            ),
            SizedBox(height: 15.0),
            ReactiveInputField(
              title: 'Confirm password',
              formControlName: 'confirmPassword',
              keyboardType: TextInputType.text,
              obscureText: obscureTextConfirmPassword,
              hintText: 'Enter confirm password',
              suffixIcon: IconButton(
                icon: iconConfirmPassword,
                iconSize: 30.0,
                onPressed: () {
                  setState(() {
                    if (obscureTextConfirmPassword) {
                      obscureTextConfirmPassword = false;
                      iconConfirmPassword = Icon(
                        OMIcons.visibility,
                        color: Colors.grey,
                      );
                    } else {
                      obscureTextConfirmPassword = true;
                      iconConfirmPassword = Icon(
                        OMIcons.visibilityOff,
                        color: Colors.grey,
                      );
                    }
                  });
                },
              ),
              validationMessages: {
                'mustMatch': 'Password confirmation must match',
              },
              textInputAction: TextInputAction.done,
            ),
            NextButton(),
          ],
        ),
      ),
    );
  }
}

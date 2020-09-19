import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:sneakerbox_flutter/global_widgets/reactive_input_field.dart';
import 'package:sneakerbox_flutter/global_widgets/rectangle_button.dart';
import 'package:sneakerbox_flutter/global_widgets/registration_link.dart';
import 'package:sneakerbox_flutter/screens/login/widgets/forgot_password_link.dart';

class ReactiveLoginForm extends StatefulWidget {
  ReactiveLoginForm({
    this.form,
    this.password,
  });

  final FormGroup form;
  final FormControl password;

  @override
  _ReactiveLoginFormState createState() => _ReactiveLoginFormState();
}

class _ReactiveLoginFormState extends State<ReactiveLoginForm> {
  bool obscureText = true;
  Icon icon = Icon(
    OMIcons.visibilityOff,
    color: Colors.grey,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: ReactiveForm(
        formGroup: this.widget.form,
        child: Column(
          children: <Widget>[
            ReactiveInputField(
              title: 'Email address',
              formControlName: 'email',
              hintText: 'Enter email address',
              validationMessages: {
                'required': 'The email must not be empty',
                'email': 'The email value must be a valid email',
              },
              textInputAction: TextInputAction.next,
              onSubmitted: () => this.widget.password.focus(),
            ),
            SizedBox(height: 15.0),
            ReactiveInputField(
              title: 'Password',
              formControlName: 'password',
              obscureText: obscureText,
              hintText: 'Enter password',
              suffixIcon: IconButton(
                icon: icon,
                iconSize: 30.0,
                onPressed: () {
                  setState(() {
                    if (obscureText) {
                      obscureText = false;
                      icon = Icon(
                        OMIcons.visibility,
                        color: Colors.grey,
                      );
                    } else {
                      obscureText = true;
                      icon = Icon(
                        OMIcons.visibilityOff,
                        color: Colors.grey,
                      );
                    }
                  });
                },
              ),
              validationMessages: {
                'required': 'The password must not be empty',
              },
              textInputAction: TextInputAction.done,
            ),
            ForgotPasswordLink(),
            RegistrationLink(),
          ],
        ),
      ),
    );
  }
}

class MySubmitButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final form = ReactiveForm.of(context);
    return RectangleButton(
      onPressed: form.valid ? _onPressed : null,
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
    );
  }

  void _onPressed() {
    print('Hello Reactive Forms!!!');
  }
}

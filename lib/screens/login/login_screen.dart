import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:sneakerbox_flutter/screens/login/widgets/reactive_login_form.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            icon: Icon(
              OMIcons.arrowBackIos,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            }),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Hero(
                tag: 'logo',
                child: Container(
                  height: 130.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/logos/sneakerbox.png'),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15.0),
              Text(
                'Login',
                style: TextStyle(
                  fontFamily: 'FuturaStd',
                  fontSize: 25.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 30.0),
              ReactiveLoginForm(form: form, password: password),
            ],
          ),
        ),
      ),
    );
  }
}

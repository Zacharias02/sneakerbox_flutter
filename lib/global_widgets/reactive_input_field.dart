import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class ReactiveInputField extends StatelessWidget {
  ReactiveInputField({
    this.title,
    this.formControlName,
    this.keyboardType,
    this.obscureText = false,
    this.hintText,
    this.suffixIcon,
    this.validationMessages,
    this.textInputAction,
    this.onSubmitted,
  });

  final String title;
  final String formControlName;
  final TextInputType keyboardType;
  final bool obscureText;
  final String hintText;
  final Widget suffixIcon;
  final Map<String, String> validationMessages;
  final TextInputAction textInputAction;
  final Function onSubmitted;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom: 8.0),
            child: Text(
              title,
              style: TextStyle(
                fontFamily: 'FuturaStd',
                fontSize: 17.0,
                fontWeight: FontWeight.w500,
                color: Colors.grey[800],
              ),
            ),
          ),
          ReactiveTextField(
            formControlName: formControlName,
            keyboardType: keyboardType,
            obscureText: obscureText,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(
                fontFamily: 'FuturaStd',
                fontSize: 14.0,
                fontWeight: FontWeight.w700,
                color: Colors.grey[600],
              ),
              fillColor: Colors.grey.withOpacity(0.3),
              filled: true,
              suffixIcon: suffixIcon,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 1.5),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black, width: 1.5),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red, width: 1.5),
              ),
              errorStyle: TextStyle(
                fontFamily: 'FuturaStd',
                fontSize: 14.0,
                fontWeight: FontWeight.w500,
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red, width: 1.5),
              ),
            ),
            validationMessages: validationMessages,
            textInputAction: textInputAction,
            onSubmitted: onSubmitted,
          ),
        ],
      ),
    );
  }
}

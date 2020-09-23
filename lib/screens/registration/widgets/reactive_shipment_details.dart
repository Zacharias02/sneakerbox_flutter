import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:sneakerbox_flutter/global_widgets/reactive_input_field.dart';
import 'package:sneakerbox_flutter/screens/registration/login_details_screen.dart';

class ReactiveShipmentDetailsForm extends StatefulWidget {
  const ReactiveShipmentDetailsForm({@required this.form});

  final FormGroup form;

  @override
  _ReactiveShipmentDetailsFormState createState() =>
      _ReactiveShipmentDetailsFormState();
}

class _ReactiveShipmentDetailsFormState
    extends State<ReactiveShipmentDetailsForm> {
  String gend = "Gender";
  @override
  Widget build(BuildContext context) {
    print("${'widget.form.control("datetime").value'}");
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: ReactiveForm(
        formGroup: widget.form,
        child: Column(
          children: <Widget>[
            ReactiveInputField(
              title: 'Address',
              formControlName: 'lname',
              keyboardType: TextInputType.text,
              hintText: 'Enter your address',
              validationMessages: {
                'required': 'This field must not be empty',
              },
              textInputAction: TextInputAction.next,
            ),
            SizedBox(height: 15.0),
            ReactiveInputField(
              title: 'Street',
              formControlName: 'fname',
              keyboardType: TextInputType.text,
              hintText: 'Enter your street address',
              validationMessages: {'required': 'This field must not be empty'},
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[Text('City')],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[Text('Region')],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Expanded(
                  child: DropdownButtonHideUnderline(
                      child: Container(
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(5.0),
                          border: Border.all(width: 1.5, color: Colors.grey)),
                      child: Container(
                        padding:
                            EdgeInsets.only(left: 10, right: 10, bottom: 10),
                        child: ReactiveDropdownField<bool>(
                            formControlName: 'gender',
                            hint: Text('City'),
                            items: [
                              DropdownMenuItem(
                                  value: true, child: Text('Bacoor')),
                              DropdownMenuItem(
                                  value: false, child: Text('Imus'))
                            ]),
                      ),
                    ),
                    height: 50,
                  )),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: DropdownButtonHideUnderline(
                      child: Container(
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(5.0),
                          border: Border.all(width: 1.5, color: Colors.grey)),
                      child: Container(
                        padding:
                            EdgeInsets.only(left: 10, right: 10, bottom: 10),
                        child: ReactiveDropdownField<bool>(
                            formControlName: 'gender',
                            hint: Text('City'),
                            items: [
                              DropdownMenuItem(
                                  value: true, child: Text('Calabarzon')),
                              DropdownMenuItem(
                                  value: false, child: Text('Caraga'))
                            ]),
                      ),
                    ),
                    height: 50,
                  )),
                ),
              ],
            ),
            SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    child: ReactiveInputField(
                      title: 'Zip',
                      formControlName: 'lname',
                      keyboardType: TextInputType.text,
                      hintText: 'e.g. 4103',
                      validationMessages: {
                        'required': 'This field must not be empty',
                      },
                      textInputAction: TextInputAction.next,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: SizedBox(),
                ),
              ],
            ),
            SizedBox(),
            NextButton(),
          ],
        ),
      ),
    );
  }
}

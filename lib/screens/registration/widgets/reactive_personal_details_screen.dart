import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:sneakerbox_flutter/global_widgets/reactive_input_field.dart';
import 'package:sneakerbox_flutter/screens/registration/login_details_screen.dart';

class ReactivePersonalDetailsForm extends StatefulWidget {
  const ReactivePersonalDetailsForm({@required this.form});

  final FormGroup form;

  @override
  _ReactivePersonalDetailsFormState createState() =>
      _ReactivePersonalDetailsFormState();
}

class _ReactivePersonalDetailsFormState
    extends State<ReactivePersonalDetailsForm> {
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
              title: 'Last name',
              formControlName: 'lname',
              keyboardType: TextInputType.text,
              hintText: 'Enter last name',
              validationMessages: {
                'required': 'This field must not be empty',
              },
              textInputAction: TextInputAction.next,
            ),
            SizedBox(height: 15.0),
            ReactiveInputField(
              title: 'First name',
              formControlName: 'fname',
              keyboardType: TextInputType.text,
              hintText: 'Enter your first name',
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
                    children: <Widget>[Text('Gender')],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[Text('Birthdate')],
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
                            hint: Text('Gender'),
                            items: [
                              DropdownMenuItem(
                                  value: true, child: Text('Male')),
                              DropdownMenuItem(
                                  value: false, child: Text('Female'))
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
                    // child: ReactiveTextField(
                    //   formControlName: 'datetime',
                    //   readOnly: true,
                    //   decoration: InputDecoration(
                    //       hintText: 'dd/mm/yyyy',
                    //       suffixIcon: ReactiveDatePicker(
                    //         initialDatePickerMode: DatePickerMode.day,
                    //         formControlName: 'datetime',
                    //         firstDate: DateTime(1960),
                    //         lastDate: DateTime.now(),
                    //         fieldHintText: 'Birthday',
                    //         builder: (context, picker, child) {
                    //           return IconButton(
                    //               icon: Icon(Icons.date_range),
                    //               onPressed: picker.showPicker);
                    //         },
                    //       )),
                    // ),
                    child: Container(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(width: 1.5, color: Colors.grey)),
                    child: Container(
                      padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                      child: ReactiveTextField(
                        formControlName: 'datetime',
                        readOnly: true,
                        decoration: InputDecoration(
                            hintText: 'dd/mm/yyyy',
                            suffixIcon: ReactiveDatePicker(
                              initialDatePickerMode: DatePickerMode.day,
                              formControlName: 'datetime',
                              firstDate: DateTime(1960),
                              lastDate: DateTime.now(),
                              fieldHintText: 'Birthday',
                              builder: (context, picker, child) {
                                return IconButton(
                                    icon: Icon(
                                      Icons.date_range,
                                      color: Colors.grey,
                                    ),
                                    onPressed: picker.showPicker);
                              },
                            )),
                      ),
                    ),
                  ),
                  height: 50,
                )),
              ],
            ),
            SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Size",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16.5,
                      fontFamily: 'FuturaStd'),
                ),
                Text('')
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
                            formControlName: 'size',
                            hint: Text('Shoe Size'),
                            items: [
                              DropdownMenuItem(
                                  value: true, child: Text('Malaki')),
                              DropdownMenuItem(
                                  value: false, child: Text('Sobrang Laki'))
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

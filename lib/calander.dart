import 'package:flutter/material.dart';
import 'package:date_range_form_field/date_range_form_field.dart';

// Make a form
class MyFormField extends StatefulWidget {
  @override
  _MyFormFieldState createState() => _MyFormFieldState();
}

GlobalKey myFormKey = new GlobalKey();

class _MyFormFieldState extends State<MyFormField> {
  late DateTimeRange myDateRange;

  // void _submitForm() {
  //   final FormState form = myFormKey;
  //   form.save();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Date Range Form Example"),
      ),
      body: SafeArea(
        child: Form(
          key: myFormKey,
          child: Column(
            children: [
              SafeArea(
                child: DateRangeField(
                    context: context,
                    decoration: InputDecoration(
                      labelText: 'Date Range',
                      prefixIcon: Icon(Icons.date_range),
                      hintText: 'Please select a start and end date',
                      border: OutlineInputBorder(),
                    ),
                    initialValue: DateTimeRange(
                        start: DateTime.now(), end: DateTime.now()),
                    validator: (value) {
                      if (value.start.isBefore(DateTime.now())) {
                        return 'Please enter a valid date';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      setState(() {
                        myDateRange = value;
                      });
                    }),
              ),
              // FlatButton(
              //   child: Text('Submit'),
              // ),
              if (myDateRange != null)
                Text("Saved value is: ${myDateRange.toString()}")
            ],
          ),
        ),
      ),
    );
  }
}

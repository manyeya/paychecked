import 'package:flutter/material.dart';
import 'package:paychecked/components/AddButton.dart';
import 'package:paychecked/components/CustomTextField.dart';

class AddTask extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Center(
            child: FractionallySizedBox(
              widthFactor: 0.9,
              child: Form(
                key: _formKey,
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Add New Task',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple[900]),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  CustomTextField(
                    onChanged: null,
                    placeholder: 'What do you want to do?',
                    validator: (String value) {
                      if (value.trim().isEmpty) {
                        return "Task is required";
                      }
                    },
                  ),
                  SizedBox(height: 20),
                  CustomTextField(
                    onChanged: null,
                    placeholder: 'For how  many minutes?',
                    validator: (String value) {
                      if (value.trim().isEmpty) {
                        return "Time is required";
                      } else if (!value.contains(RegExp(r'^[0-9]*$'))) {
                        return "please enter only numeric numbers";
                      } else {}
                    },
                    keyboard: TextInputType.phone,
                  ),
                  SizedBox(height: 20),
                  DropdownButtonFormField(
                    onChanged: (value) {
                      print(value);
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          borderSide:
                              BorderSide(style: BorderStyle.none, width: 0)),
                      fillColor: Colors.grey[200],
                      filled: true,
                      hintText: "Is it a personal task or work task?",
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                    items: [
                      DropdownMenuItem(
                          child: Text('Personal'), value: 'Personal'),
                      DropdownMenuItem(child: Text('Work'), value: 'Work')
                    ],
                  ),
                  SizedBox(height: 20),
                  AddButton(
                    buttontext: 'Add Task',
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        print('success');
                      }
                    },
                  )
                ]),
              ),
            ),
          )),
    );
  }
}

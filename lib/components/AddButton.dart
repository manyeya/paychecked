import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  final String buttontext;
  final Function onPressed;

  const AddButton({Key key, @required this.buttontext, this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      child: Text(
        buttontext,
        style: TextStyle(color: Colors.white),
      ),
      color: Colors.deepPurple[900],
      padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 17.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
    );
  }
}
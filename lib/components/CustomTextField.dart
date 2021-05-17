import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final bool visible;
  final Function(String) validator;
  final String placeholder;
  final bool hasSurffixIcon;
  final Function surffixIconPressed;
  final Function onChanged;
  final TextInputType keyboard;
  const CustomTextField(
      {Key key,
      this.visible = false,
      @required this.validator,
      @required this.placeholder,
      this.hasSurffixIcon = false,
      this.surffixIconPressed,
      @required this.onChanged,
      this.keyboard})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enableInteractiveSelection: true,
      obscureText: visible,
      validator: validator,
      onChanged: onChanged,
      keyboardType: keyboard,
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
        suffixIcon: hasSurffixIcon
            ? IconButton(
                icon: Icon(
                  visible ? Icons.remove_red_eye : Icons.visibility_off,
                  color: Colors.grey,
                ),
                onPressed: surffixIconPressed)
            : null,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            borderSide: BorderSide(style: BorderStyle.none, width: 0)),
        fillColor: Colors.grey[200],
        filled: true,
        hintText: placeholder,
        hintStyle: TextStyle(color: Colors.grey),
      ),
    );
  }
}
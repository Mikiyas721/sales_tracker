import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String errorText;
  final String labelText;
  final IconData icon;
  final TextInputType keyboardType;
  final void Function(String value) onChanged;

  const MyTextField(
      {Key key,
      @required this.icon,
      @required this.labelText,
      @required this.errorText,
      @required this.onChanged,
      this.keyboardType = TextInputType.number})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      keyboardType: keyboardType,
      decoration: InputDecoration(
          errorText: errorText, prefixIcon: Icon(icon), labelText: labelText),
    );
  }
}

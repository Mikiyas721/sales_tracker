import 'package:flutter/material.dart';
import '../../common/common.dart';

class MyTextField extends StatelessWidget {
  final String errorText;
  final String labelText;
  final IconData icon;
  final TextInputType keyboardType;
  final void Function(String value) onChanged;
  final void Function(String value) onSubmitted;
  final TextEditingController controller;

  const MyTextField({
    Key key,
    @required this.icon,
    @required this.labelText,
    @required this.errorText,
    @required this.onChanged,
    this.keyboardType = TextInputType.number,
    this.controller,
    this.onSubmitted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: 5.vPadding,
      child: TextField(
        onChanged: onChanged,
        controller: controller,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          errorText: errorText,
          prefixIcon: Icon(icon),
          labelText: labelText,
        ),
        onSubmitted: onSubmitted,
      ),
    );
  }
}

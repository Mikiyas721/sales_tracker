import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String label;
  final bool isLoading;
  final double minWidth;
  final VoidCallback onSubmit;

  const MyButton({
    Key key,
    @required this.label,
    this.isLoading = false,
    this.minWidth = double.infinity,
    @required this.onSubmit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onSubmit,
      child: isLoading ? CircularProgressIndicator() : Text(label),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(40))), minWidth:minWidth,);
  }
}

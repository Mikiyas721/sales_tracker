import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../../common/common.dart';

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
      height: 50,
      color: context.primaryColor,
      textColor: Colors.white,
      onPressed: onSubmit,
      child: isLoading
          ? SpinKitFadingCircle(color: Colors.white, size: 40)
          : Text(label),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(40))),
      minWidth: minWidth,
    );
  }
}

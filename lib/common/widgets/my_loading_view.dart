import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:sales_tracker/common/common.dart';
class MyLoadingView extends StatelessWidget {
  final Color color;
  final double size;

  const MyLoadingView({
    Key key,
    this.color,
    this.size = 40,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SpinKitCircle(
      size: size,
      itemBuilder: (BuildContext context, int index) {
        return DecoratedBox(
          decoration: BoxDecoration(
            color: color ?? context.primaryColor,
            borderRadius: BorderRadius.circular(16),
          ),
        );
      },
    );
  }
}
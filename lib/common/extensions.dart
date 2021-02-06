import 'package:flutter/material.dart';

extension SpacingExtension on num {
  EdgeInsets get hPadding => EdgeInsets.symmetric(horizontal: this.toDouble());

  EdgeInsets get vPadding => EdgeInsets.symmetric(vertical: this.toDouble());

  EdgeInsets get allPadding => EdgeInsets.all(this.toDouble());

  Widget get hSpace => SizedBox(width: this.toDouble());

  Widget get vSpace => SizedBox(height: this.toDouble());
}

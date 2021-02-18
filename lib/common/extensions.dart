import 'package:flutter/material.dart';

extension SpacingExtension on num {
  EdgeInsets get hPadding => EdgeInsets.symmetric(horizontal: this.toDouble());

  EdgeInsets get vPadding => EdgeInsets.symmetric(vertical: this.toDouble());

  EdgeInsets get allPadding => EdgeInsets.all(this.toDouble());

  Widget get hSpace => SizedBox(width: this.toDouble());

  Widget get vSpace => SizedBox(height: this.toDouble());
}
extension BuildContextExtension on BuildContext{
  Color get primaryColor=> Theme.of(this).primaryColor;
  Color get secondaryHeaderColor=> Theme.of(this).secondaryHeaderColor;

  TextStyle get headline2=> Theme.of(this).textTheme.headline2;
  TextStyle get headline3=> Theme.of(this).textTheme.headline3;
  TextStyle get headline4=> Theme.of(this).textTheme.headline4;
  TextStyle get headline5=> Theme.of(this).textTheme.headline5;
  TextStyle get headline6=> Theme.of(this).textTheme.headline6;
  TextStyle get caption=> Theme.of(this).textTheme.caption;

}

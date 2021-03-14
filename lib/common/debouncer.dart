import 'dart:async';
import 'package:dio/dio.dart';

class DeBouncer {
  final int milliseconds;
  Timer _timer;

  DeBouncer({this.milliseconds});

  run(VoidCallback onTime) {
    if (_timer != null) _timer.cancel();
    _timer = Timer(Duration(milliseconds: milliseconds), onTime);
  }
}

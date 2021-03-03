import 'package:flutter/material.dart';
import '../../common/common.dart';

class MyTabButton extends StatelessWidget {
  final String label;
  final bool isActive;
  final void Function(bool isActive) onTap;

  MyTabButton({
    @required this.label,
    @required this.onTap,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return Card(elevation: 3,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: InkWell(
        onTap: (){
          onTap(!isActive);
        },
        child: Container(
          decoration: BoxDecoration(
            color: isActive ? context.primaryColor : Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(40)),
          ),
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: Text(
            label,
            style: TextStyle(color: isActive ? Colors.white : Colors.black),
          ),
        ),
      ),
    );
  }
}

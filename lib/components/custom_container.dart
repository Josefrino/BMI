import 'package:flutter/material.dart';

import 'constant.dart';

class CustomContainer extends StatelessWidget {
  CustomContainer({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      width: 150.0,
      decoration: BoxDecoration(
        color: kInactiveColor,
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          BoxShadow(
            color: Color(0xFFAFC8D8),
            blurRadius: 2.0,
            spreadRadius: 0.0,
            offset: Offset(
              2.0,
              2.0,
            ), // shadow direction: bottom right
          ),
          BoxShadow(
            color: Color(0xFFF4F8F9),
            blurRadius: 2.0,
            spreadRadius: 0.0,
            offset: Offset(
              -2.0,
              -2.0,
            ), // shadow direction: bottom right
          )
        ],
      ),
    );
  }
}

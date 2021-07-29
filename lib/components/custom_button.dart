import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({required this.icon, this.onTap});

  final IconData icon;
  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        icon,
        color: Color(0xFF6C7284),
        size: 15.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFFEEEEEE),
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(height: 46.0, width: 46.0),
      onPressed: () {
        onTap!();
      },
    );
  }
}

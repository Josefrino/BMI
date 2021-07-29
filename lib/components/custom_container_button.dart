import 'package:flutter/material.dart';

class CustomContainerButton extends StatefulWidget {
  CustomContainerButton(
      {required this.text, required this.onSelected, required this.color});

  final Text text;
  final Function onSelected;
  final color;

  @override
  _CustomContainerButtonState createState() => _CustomContainerButtonState();
}

class _CustomContainerButtonState extends State<CustomContainerButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onSelected();
      },
      child: Container(
        width: 150.0,
        height: 50.0,
        decoration: BoxDecoration(
          color: widget.color,
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
        child: Center(
          child: widget.text,
        ),
      ),
    );
  }
}

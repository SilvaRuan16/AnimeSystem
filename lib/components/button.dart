import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final double width;
  final double height;
  final VoidCallback onpressed;
  final Color backgroundColor;
  final double bordeRadius;
  final Color borderColor;
  final Color labelColor;
  final double fontSize;
  final String label;

  const Button(
      {super.key,
      required this.width,
      required this.height,
      required this.onpressed,
      required this.backgroundColor,
      required this.bordeRadius,
      required this.borderColor,
      required this.label,
      required this.labelColor,
      required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onpressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(bordeRadius),
            side: BorderSide(color: borderColor, width: 1),
          )
        ),
        child: Text(
          label,
          style: TextStyle(color: labelColor, fontSize: fontSize),
        ),
      ),
    );
  }
}

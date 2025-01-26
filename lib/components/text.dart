import 'package:flutter/material.dart';

// ignore: unused_element
Text text(String text, Color colorText, double size) {
  return Text(
    text,
    style: TextStyle(
      color: colorText,
      fontSize: size,
      fontFamily: "monospace"
    ),
  );
}
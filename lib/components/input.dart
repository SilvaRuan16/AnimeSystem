import 'package:animesystem/components/config.dart';
import 'package:flutter/material.dart';

class LogInput extends StatelessWidget {
  const LogInput({super.key, required this.label, required this.controller, this.emoji});

  final String label;
  final TextEditingController controller;
  final IconData? emoji;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: sizeInput[0],
      height: sizeInput[1],
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(color: whiteColor),
          border: const OutlineInputBorder(),
          prefixIcon: Icon(emoji, color: whiteColor),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: whiteColor),
            borderRadius: BorderRadius.circular(10)
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: whiteColor),
            borderRadius: BorderRadius.circular(10)
          )
        ),
      ),
    );
  }
}
import 'package:animesystem/components/config.dart';
import 'package:animesystem/components/text.dart';
import 'package:flutter/material.dart';

class Initialpage extends StatelessWidget {
  const Initialpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: text("Inicio", whiteColor, 20.0),
        backgroundColor: background,
        centerTitle: true,
        iconTheme: const IconThemeData(color: whiteColor),
      ),
    );
  }
}
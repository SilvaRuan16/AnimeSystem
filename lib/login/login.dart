import 'package:animesystem/components/config.dart';
import 'package:animesystem/components/input.dart';
import 'package:animesystem/components/text.dart';
import 'package:animesystem/initial/initialPage.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LogInput(label: "Email", controller: _emailController, emoji: Icons.email),
              spaceBox,
              LogInput(label: "Senha", controller: _passwordController, emoji: Icons.password),
              spaceBox,
              SizedBox(
                width: sizeInput[0],
                height: sizeInput[1],
                child: ElevatedButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Initialpage()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: transparentColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(color: whiteColor, width: 1)
                  )
                ), 
                child: text("Login", whiteColor, 17),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

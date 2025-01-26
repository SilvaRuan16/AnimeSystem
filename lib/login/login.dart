import 'package:animesystem/components/button.dart';
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
      backgroundColor: blackColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  width: 300,
                  height: 200,
                  fit: BoxFit.cover,
                  "assets/images/LogoAnimeSystem.png"
                ),
                spaceBox,
                LogInput(label: "Email", controller: _emailController, emoji: Icons.email),
                spaceBox,
                LogInput(label: "Senha", controller: _passwordController, emoji: Icons.password),
                spaceBox,
                Button(
                  width: sizeInput[0],
                  height: sizeInput[1],
                  onpressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => const Initialpage(),
                    ));
                  },
                  backgroundColor: const Color.fromARGB(255, 18, 83, 135),
                  bordeRadius: 10,
                  borderColor: transparentColor,
                  label: "Login",
                  labelColor: whiteColor,
                  fontSize: 17
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
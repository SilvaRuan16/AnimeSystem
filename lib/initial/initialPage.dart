import 'package:animesystem/components/config.dart';
import 'package:animesystem/components/text.dart';
import 'package:flutter/material.dart';

class Initialpage extends StatelessWidget {
  const Initialpage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: text("Inicio", whiteColor, 20.0),
        backgroundColor: blackColor,
        centerTitle: true,
        iconTheme: const IconThemeData(color: whiteColor),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 500,
                      height: 200,
                      color: blackColor,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        border: Border.all(
                          color: Colors.white, // Cor da borda
                          width: 3.0, // Espessura da borda
                        ),
                        borderRadius:
                            BorderRadius.circular(12), // Borda arredondada
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 500,
                      height: 200,
                      color: Colors.pink,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        border: Border.all(
                          color: Colors.white, // Cor da borda
                          width: 3.0, // Espessura da borda
                        ),
                        borderRadius:
                            BorderRadius.circular(12), // Borda arredondada
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 500,
                      height: 200,
                      color: Colors.blue,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        border: Border.all(
                          color: Colors.white, // Cor da borda
                          width: 3.0, // Espessura da borda
                        ),
                        borderRadius:
                            BorderRadius.circular(12), // Borda arredondada
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

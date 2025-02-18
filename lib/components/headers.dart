import 'package:flutter/material.dart';

class Headers extends StatelessWidget {
  const Headers({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(
          '././lib/images/Logo_RBC.png',
          // color: Colors.white,
          width: screenWidth * 0.5,
        ),
        Image.asset(
          '././lib/images/Zero.webp',
          // color: Colors.white,
          width: screenWidth * 0.2,
        ),
      ],
    );
  }
}

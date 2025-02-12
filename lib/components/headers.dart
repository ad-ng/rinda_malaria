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
          '././lib/images/moh.png',
          width: screenWidth * 0.28,
        ),
        Image.asset(
          '././lib/images/Logo_RBC.png',
          width: screenWidth * 0.4,
        )
      ],
    );
  }
}

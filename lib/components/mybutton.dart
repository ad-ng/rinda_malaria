import 'package:flutter/material.dart';
import 'package:rinda_malaria/pages/page_2.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Page2(),
          )),
      child: Container(
        margin: EdgeInsets.only(
            left: screenWidth * 0.05,
            right: screenWidth * 0.05,
            top: screenHeight * 0.05),
        width: screenWidth,
        height: screenHeight * 0.07,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.redAccent[100],
        ),
        child: Center(
          child: Text(
            'Emeza',
            style: TextStyle(color: Colors.green[900], fontSize: 20),
          ),
        ),
      ),
    );
  }
}

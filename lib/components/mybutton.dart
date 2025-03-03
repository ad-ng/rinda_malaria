import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Widget page;
  final currentOption;
  MyButton({super.key, required this.page, this.currentOption});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    nextPageFunction() {
      if (currentOption == 'Nta Malariya Afite') {
        return ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'NTA MALARIYA UFITE!',
              style: TextStyle(
                color: Colors.amber,
                fontSize: 30,
              ),
            ),
          ),
        );
      }
      return Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => page,
        ),
      );
    }

    return GestureDetector(
      onTap: nextPageFunction,
      // return Navigator.push(
      //   context,
      //   MaterialPageRoute(
      //     builder: (context) => page,
      //   ))};
      child: Container(
        margin: EdgeInsets.only(
            left: screenWidth * 0.05,
            right: screenWidth * 0.05,
            top: screenHeight * 0.02),
        width: screenWidth,
        height: screenHeight * 0.07,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.redAccent[100],
        ),
        child: Center(
          child: Text(
            'Emeza',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rinda_malaria/components/headers.dart';
import 'package:rinda_malaria/components/mybutton.dart';
import 'package:rinda_malaria/pages/page_2.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

List<String> options = ['Confirmed Malaria', 'No Malaria'];

class _Page1State extends State<Page1> {
  String currentOption = options[0];
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            '././lib/images/transmission.jpg',
            fit: BoxFit.cover,
            height: screenHeight,
          ),
          BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 3,
              sigmaY: 2,
            ),
            child: Container(
              color: Colors.black.withOpacity(
                  0), // Optional: overlay to make it darker or transparent
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: screenHeight * 0.07,
              ),
              Headers(),
              SizedBox(
                height: screenHeight * 0.05,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Card(
                  color: Color.fromARGB(234, 2, 106, 158),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      textAlign: TextAlign.center,
                      'Malaria Drug Prescription Guide',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.05),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 12),
                height: screenWidth * 0.43,
                width: screenWidth,
                child: Card(
                  color: Colors.white,
                  child: ListView.builder(
                    itemCount: options.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                          title: Text(
                            options[index],
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                          leading: Radio(
                            activeColor: Colors.black,
                            value: options[index],
                            groupValue: currentOption,
                            onChanged: (value) {
                              setState(() {
                                currentOption = value.toString();
                              });
                            },
                          ));
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              MyButton(
                currentOption: currentOption,
                page: Page2(),
              )
            ],
          ),
        ],
      ),
    );
  }
}

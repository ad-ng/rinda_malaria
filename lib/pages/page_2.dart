import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:rinda_malaria/components/backButton.dart';
import 'package:rinda_malaria/components/headers.dart';
import 'package:rinda_malaria/components/mybutton.dart';
import 'package:rinda_malaria/pages/page_5.dart';

class Page2 extends StatefulWidget {
  Page2({
    super.key,
  });

  @override
  State<Page2> createState() => _Page3State();
}

List<String> options = ['Simple Malaria', 'Simple Malaria + MDS', 'Severe'];

class _Page3State extends State<Page2> {
  String currentOption = options[0];
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Stack(
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
                BackButtonCustom(
                  isLast: false,
                ),
                Headers(),
                SizedBox(
                  height: screenHeight * 0.000,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Ubwoko bwa Maraliya',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 30,
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Card(
                      color: Colors.white,
                      child: ListView.builder(
                        itemCount: options.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(
                              options[index],
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20),
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
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
                MyButton(page: Page5()),
                SizedBox(
                  height: screenHeight * 0.08,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

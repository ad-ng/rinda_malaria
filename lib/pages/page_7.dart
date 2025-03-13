import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rinda_malaria/components/backButton.dart';
import 'package:rinda_malaria/components/headers.dart';
import 'package:rinda_malaria/components/mybutton.dart';
import 'package:rinda_malaria/pages/page_5.dart';
import 'package:rinda_malaria/pages/page_8.dart';

class Page7 extends StatefulWidget {
  final String umuti;
  const Page7({super.key, required this.umuti});

  @override
  State<Page7> createState() => _Page7State();
}

List<String> options = ['Yes', 'No'];

class _Page7State extends State<Page7> {
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
                    'Is Pregnancy Beyond 3 Months?',
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
                SizedBox(
                  height: screenHeight * 0.2,
                ),
                MyButton(
                  page: (currentOption == 'Yes')
                      ? Page8(
                          umuti: widget.umuti,
                        )
                      : Page5(
                          options: ['AL', 'DHAP'],
                        ),
                ),
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

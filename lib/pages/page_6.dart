import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rinda_malaria/components/backButton.dart';
import 'package:rinda_malaria/components/headers.dart';
import 'package:rinda_malaria/components/mybutton.dart';
import 'package:rinda_malaria/pages/page_7.dart';
import 'package:rinda_malaria/pages/page_8.dart';

class Page6 extends StatefulWidget {
  final List<String> options_weigh;
  final List<String> imitiOptions;
  const Page6({
    super.key,
    required this.options_weigh,
    required this.imitiOptions,
  });

  @override
  State<Page6> createState() => _Page6State();
}

List<String> options = ['Yego', 'Oya'];

class _Page6State extends State<Page6> {
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
                    'N\'umugore Utwite ?',
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
                  height: screenHeight * 0.33,
                ),
                MyButton(
                    page: (currentOption == 'Oya')
                        ? Page8(
                            options_weigh: widget.options_weigh,
                            currentOption_weigh: widget.options_weigh[0])
                        : Page7(
                            imitiOptions: widget.imitiOptions,
                            options_weigh: widget.options_weigh,
                          )),
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

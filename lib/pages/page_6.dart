import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rinda_malaria/components/backButton.dart';
import 'package:rinda_malaria/components/headers.dart';
import 'package:rinda_malaria/components/mybutton.dart';
import 'package:rinda_malaria/model/igikorwa.dart';
import 'package:rinda_malaria/pages/page_7.dart';

class Page6 extends StatefulWidget {
  final List<String> options_weigh;
  String currentOption_weigh;
   Page6({
    super.key,
    required this.options_weigh,
    required this.currentOption_weigh,
  });

  @override
  State<Page6> createState() => _Page3State();
}

class _Page3State extends State<Page6> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Consumer<Igikorwa>(
      builder: (context, value, child) {
        value.ibiro = widget.currentOption_weigh;
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
                        'Emeza ibiro',
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
                            itemCount: widget.options_weigh.length,
                            itemBuilder: (context, index) {
                              return ListTile(
                                title: Text(
                                  widget.options_weigh[index],
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20),
                                ),
                                leading: Radio(
                                  activeColor: Colors.black,
                                  value: widget.options_weigh[index],
                                  groupValue: widget.currentOption_weigh,
                                  onChanged: (value) {
                                    setState(() {
                                      widget.currentOption_weigh =
                                          value.toString();
                                    });
                                  },
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                    MyButton(page: Page7()),
                    SizedBox(
                      height: screenHeight * 0.08,
                    )
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rinda_malaria/components/backButton.dart';
import 'package:rinda_malaria/components/headers.dart';
import 'package:rinda_malaria/components/mybutton.dart';
import 'package:rinda_malaria/model/igikorwa.dart';
import 'package:rinda_malaria/pages/page_5.dart';

class Page4 extends StatefulWidget {
  final List<String> options_weigh;
  String currentOption_weigh;
  Page4({
    super.key,
    required this.options_weigh,
    required this.currentOption_weigh,
  });

  @override
  State<Page4> createState() => _Page3State();
}

class _Page3State extends State<Page4> {
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
                          color: Color.fromARGB(234, 144, 201, 229),
                          child: ListView.builder(
                            itemCount: widget.options_weigh.length,
                            itemBuilder: (context, index) {
                              return ListTile(
                                title: Text(
                                  widget.options_weigh[index],
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20),
                                ),
                                leading: Radio(
                                  activeColor: Colors.white,
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
      },
    );
  }
}

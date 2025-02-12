import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rinda_malaria/components/backButton.dart';
import 'package:rinda_malaria/components/mybutton.dart';
import 'package:rinda_malaria/model/igikorwa.dart';
import 'package:rinda_malaria/pages/page_4.dart';

class Page3 extends StatefulWidget {
  final List<String> options_aged;
  String currentOption_age;
  final List<String> options_weigh;
  String currentOption_weigh;

  Page3({
    super.key,
    required this.options_aged,
    required this.currentOption_age,
    required this.options_weigh,
    required this.currentOption_weigh,
  });

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Consumer<Igikorwa>(builder: (context, value, child) {
      value.imyaka = widget.currentOption_age;
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
                  sigmaX: 4,
                  sigmaY: 4,
                ),
                child: Container(
                  color: Colors.black.withOpacity(0),
                ),
              ),
              Column(
                children: [
                  BackButtonCustom(),
                  SizedBox(
                    height: screenHeight * 0.1,
                  ),
                  Card(
                    color: Colors.blueGrey[300],
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        'Emeza imyaka',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.03,
                  ),
                  Expanded(
                    child: Card(
                      color: Colors.blueGrey[300],
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      child: ListView.builder(
                        itemCount: widget.options_aged.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(
                              widget.options_aged[index],
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            leading: Radio(
                              activeColor: Colors.white,
                              value: widget.options_aged[index],
                              groupValue: widget.currentOption_age,
                              onChanged: (value) {
                                setState(() {
                                  widget.currentOption_age = value.toString();
                                });

                                print(widget.currentOption_age);
                              },
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  MyButton(
                      page: Page4(
                    currentOption_weigh: widget.currentOption_weigh,
                    options_weigh: widget.options_weigh,
                  )),
                  SizedBox(
                    height: screenHeight * 0.2,
                  )
                ],
              ),
            ],
          ),
        ),
      );
    });
  }
}

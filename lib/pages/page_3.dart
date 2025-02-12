import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rinda_malaria/components/mybutton.dart';
import 'package:rinda_malaria/pages/page_4.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

List<String> options_aged = [
  'Amezi 6-36 ',
  'Amezi 37 - Imyaka 8',
  'Imyaka 9 - Imyaka 14',
  'Imyaka 15 - kuzamura'
];

class _Page3State extends State<Page3> {
  String currentOption_age = options_aged[0];
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Image.asset(
            '././lib/images/transmission.jpg',
            fit: BoxFit.cover,
            height: screenHeight,
          ),
          BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 2,
              sigmaY: 3,
            ),
            child: Container(
              color: Colors.black.withOpacity(0),
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: screenHeight * 0.1,
              ),
              Text(
                'Emeza imyaka :',
                style: TextStyle(color: Colors.green, fontSize: 30),
              ),
              SizedBox(
                height: screenHeight * 0.03,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: options_aged.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(options_aged[index]),
                      leading: Radio(
                        value: options_aged[index],
                        groupValue: currentOption_age,
                        onChanged: (value) {
                          setState(() {
                            currentOption_age = value.toString();
                          });
                        },
                      ),
                    );
                  },
                ),
              ),
              MyButton(page: Page4()),
              SizedBox(
                height: screenHeight * 0.2,
              )
            ],
          ),
        ],
      ),
    );
  }
}

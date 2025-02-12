import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rinda_malaria/components/mybutton.dart';
import 'package:rinda_malaria/pages/page_3.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

List<String> options = [
  'Artemether Lumefantrine',
  'DihydroartemisininPiperaquine',
  'Artesunate -Pyronaridine'
];

class _Page2State extends State<Page2> {
  String currentOption = options[0];
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
              color: Colors.black.withOpacity(
                  0), // Optional: overlay to make it darker or transparent
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: screenHeight * 0.1,
              ),
              Text(
                'Hitamo umuti :',
                style: TextStyle(fontSize: 30, color: Colors.green),
              ),
              SizedBox(
                height: screenHeight * 0.05,
              ),
              ListTile(
                title: Text(
                  'Artemether Lumefantrine',
                ),
                trailing: Image.asset(
                  '././lib/images/Artemether-Lumefantrine.avif',
                  height: screenHeight * 0.1,
                ),
                leading: Radio(
                  value: options[0],
                  groupValue: currentOption,
                  onChanged: (value) {
                    setState(() {
                      currentOption = value.toString();
                    });
                  },
                ),
              ),
              ListTile(
                title: Text('Dihydroartemisinin - Piperaquine'),
                trailing: Image.asset(
                  '././lib/images/dihydroartemisinin-piperaquine-tablets.jpg',
                  height: screenHeight * 0.1,
                ),
                leading: Radio(
                  value: options[1],
                  groupValue: currentOption,
                  onChanged: (value) {
                    setState(() {
                      currentOption = value.toString();
                    });
                  },
                ),
              ),
              ListTile(
                title: Text('Artesunate -Pyronaridine'),
                trailing: Image.asset(
                  '././lib/images/artesunate-tablets-box.png',
                  height: screenHeight * 0.1,
                ),
                leading: Radio(
                  value: options[2],
                  groupValue: currentOption,
                  onChanged: (value) {
                    setState(() {
                      currentOption = value.toString();
                    });
                  },
                ),
              ),
              MyButton(
                page: Page3(),
              )
            ],
          ),
        ],
      ),
    );
  }
}

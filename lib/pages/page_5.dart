import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rinda_malaria/components/backButton.dart';
import 'package:rinda_malaria/components/headers.dart';
import 'package:rinda_malaria/components/mybutton.dart';
import 'package:rinda_malaria/model/igikorwa.dart';
import 'package:rinda_malaria/pages/page_6.dart';

class Page5 extends StatefulWidget {
  const Page5({super.key});

  @override
  State<Page5> createState() => _Page5State();
}

List<String> options = [
  'Artemether Lumefantrine',
  'DihydroartemisininPiperaquine',
  'Artesunate -Pyronaridine'
];

class _Page5State extends State<Page5> {
  String currentOption = options[0];

  options_weigh() {
    if (currentOption == 'Artemether Lumefantrine') {
      return [
        'Ibiro 5 - <15',
        'Ibiro 15 - <25',
        'Ibiro 25 - <35',
        'Ibiro 35 no kuzamura'
      ];
    }
    if (currentOption == 'Artesunate -Pyronaridine') {
      return [
        'Ibiro 5- < 8',
        'Ibiro 8- < 15',
        'Ibiro 15- <20',
        'Ibiro 20- <24',
        'Ibiro 24- <45',
        'Ibiro 45 <65',
        'Ibiro 65 kuzamura'
      ];
    }
    if (currentOption == 'DihydroartemisininPiperaquine') {
      return [
        'Ibiro 5 - < 8',
        'Ibiro 8- <11',
        'Ibiro 11- <17',
        'Ibiro 17 - <25',
        'Ibiro 25 - <36',
        'Ibiro 36 - <60',
        'Ibiro 60 - <80',
        'Ibiro 80 Kuzamura'
      ];
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Consumer<Igikorwa>(
      builder: (context, value, child) {
        value.umuti = currentOption;
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
                      height: screenHeight * 0.05,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Hitamo umuti',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.01,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        color: Colors.white,
                        child: Column(
                          children: [
                            ListTile(
                              title: Text(
                                'Artemether Lumefantrine',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                    fontSize: 20),
                              ),
                              trailing: Image.asset(
                                '././lib/images/Antimalarial-Artemether-Lumefantrine-20-120mg.jpg',
                                height: screenHeight * 0.1,
                              ),
                              leading: Radio(
                                activeColor: Colors.black,
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
                              title: Text('Dihydroartemisinin - Piperaquine',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                      fontSize: 20)),
                              trailing: Image.asset(
                                '././lib/images/dihydroartemisinin-piperaquine-tablets.jpg',
                                height: screenHeight * 0.1,
                              ),
                              leading: Radio(
                                activeColor: Colors.black,
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
                              title: Text('Artesunate -Pyronaridine',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                      fontSize: 20)),
                              trailing: Image.asset(
                                '././lib/images/artesunate-tablets-box.png',
                                height: screenHeight * 0.1,
                              ),
                              leading: Radio(
                                activeColor: Colors.black,
                                value: options[2],
                                groupValue: currentOption,
                                onChanged: (valuen) {
                                  setState(() {
                                    currentOption = valuen.toString();
                                  });
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    MyButton(
                      page: Page6(
                          options_weigh: options_weigh(),
                          currentOption_weigh: options_weigh()[0]),
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

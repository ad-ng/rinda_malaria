import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rinda_malaria/components/backButton.dart';
import 'package:rinda_malaria/components/headers.dart';
import 'package:rinda_malaria/components/mybutton.dart';
import 'package:rinda_malaria/model/igikorwa.dart';
import 'package:rinda_malaria/pages/page_4.dart';

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
  // options_age() {
  //   if (currentOption == 'Artemether Lumefantrine') {
  //     return [
  //       'Amezi 6 - 36',
  //       'Amezi 37 - Imyaka 8',
  //       'Imyaka 9 - Imyaka 14',
  //       'Imyaka 15 - kuzamura'
  //     ];
  //   } else if (currentOption == 'Artesunate -Pyronaridine') {
  //     return [
  //       'Amezi 6 - 11',
  //       'Amezi 12 - 24',
  //       'Amezi 25 - Imyaka 8',
  //       'Imyaka 9 - 15',
  //       'Imyaka 15 - 20',
  //       'Imyaka 20 kuzamura'
  //     ];
  //   }
  // }

  options_weigh() {
    if (currentOption == 'Artemether Lumefantrine') {
      return [
        'Ibiro 5 - <15',
        'Ibiro 15 - <25',
        'Ibiro 25 - <35',
        'Ibiro 35 no kuzamura'
      ];
    } else if (currentOption == 'Artesunate -Pyronaridine') {
      return [
        '5- < 8',
        '8- < 15',
        '15- <20',
        '20- <24',
        '24- <45',
        'Ibiro 45 kuzamura '
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
                    BackButtonCustom(),
                    Headers(),
                    SizedBox(
                      height: screenHeight * 0.05,
                    ),
                    Card(
                      color: Colors.blueGrey[300],
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Hitamo umuti',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.01,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        color: Colors.blueGrey[300],
                        child: Column(
                          children: [
                            ListTile(
                              title: Text(
                                'Artemether Lumefantrine',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              trailing: Image.asset(
                                '././lib/images/Artemether-Lumefantrine.avif',
                                height: screenHeight * 0.1,
                              ),
                              leading: Radio(
                                activeColor: Colors.white,
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
                                      color: Colors.white, fontSize: 20)),
                              trailing: Image.asset(
                                '././lib/images/dihydroartemisinin-piperaquine-tablets.jpg',
                                height: screenHeight * 0.1,
                              ),
                              leading: Radio(
                                activeColor: Colors.white,
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
                                      color: Colors.white, fontSize: 20)),
                              trailing: Image.asset(
                                '././lib/images/artesunate-tablets-box.png',
                                height: screenHeight * 0.1,
                              ),
                              leading: Radio(
                                activeColor: Colors.white,
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
                      page: Page4(options_weigh: options_weigh(), currentOption_weigh: options_weigh()[0]),
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

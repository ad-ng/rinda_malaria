import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rinda_malaria/components/backButton.dart';
import 'package:rinda_malaria/components/headers.dart';
import 'package:rinda_malaria/components/mybutton.dart';
import 'package:rinda_malaria/model/igikorwa.dart';
import 'package:rinda_malaria/pages/page_6.dart';
import 'package:rinda_malaria/pages/page_8.dart';

class Page5 extends StatefulWidget {
  final List<String> options;
  const Page5({super.key, required this.options});

  @override
  State<Page5> createState() => _Page5State();
}

List<String> options = [
  'AL',
  'DihydroartemisininPiperaquine',
  'Artesunate -Pyronaridine'
];

imgPath(umuti) {
  if (umuti == 'AL') {
    return '././lib/images/Antimalarial-Artemether-Lumefantrine-20-120mg.jpg';
  } else if (umuti == 'DihydroartemisininPiperaquine') {
    return '././lib/images/dihydroartemisinin-piperaquine-tablets.jpg';
  } else {
    return '././lib/images/artesunate-tablets-box.png';
  }
}

class _Page5State extends State<Page5> {
  String currentOption = options[0];

  options_weigh() {
    if (currentOption == 'AL') {
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
    options = widget.options;
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
                      height: screenHeight * 0.000,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Hitamo Umuti',
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
                                  trailing: Image.asset(
                                    imgPath(options[index]),
                                    height: screenHeight * 0.1,
                                  ));
                            },
                          ),
                        ),
                      ),
                    ),
                    MyButton(
                      page: (currentOption == 'Artesunate -Pyronaridine')
                          ? Page6(
                              options_weigh: options_weigh(),
                              imitiOptions: widget.options,
                            )
                          : Page8(
                              options_weigh: options_weigh(),
                              currentOption_weigh: options_weigh()[0]),
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
      },
    );
  }
}

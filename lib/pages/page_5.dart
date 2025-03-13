import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rinda_malaria/components/backButton.dart';
import 'package:rinda_malaria/components/headers.dart';
import 'package:rinda_malaria/components/mybutton.dart';
import 'package:rinda_malaria/model/igikorwa.dart';
import 'package:rinda_malaria/pages/page_6.dart';
import 'package:rinda_malaria/pages/page_8.dart';
import 'package:rinda_malaria/pages/page_9.dart';

class Page5 extends StatefulWidget {
  final List<String> options;
  const Page5({super.key, required this.options});

  @override
  State<Page5> createState() => _Page5State();
}

List<String> options = ['AL', 'DHAP', 'ASPY'];

imgPath(umuti) {
  if (umuti == 'AL') {
    return '././lib/images/AL.jpeg';
  } else if (umuti == 'DHAP') {
    return '././lib/images/DHAP.jpeg';
  } else {
    return '././lib/images/ASPY.jpeg';
  }
}

class _Page5State extends State<Page5> {
  String currentOption = options[0];

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    options = widget.options;

    selectPage() {
      if (currentOption == 'ASPY') {
        return Page6(
          umuti: currentOption,
        );
      } else if (currentOption == 'AL') {
        return Page8(
          umuti: currentOption,
        );
      }
      return Page9();
    }

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
                        'Choose Medicine',
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
                                contentPadding: EdgeInsets.only(
                                  left: 10,
                                  right: 20,
                                  top: 20,
                                ),
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
                                trailing: GestureDetector(
                                  onTap: () {
                                    showAdaptiveDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog.adaptive(
                                          title: Text(
                                              'Medicine: ${options[index]}'),
                                          content: SizedBox(
                                              height: 300,
                                              child: Image.asset(
                                                  imgPath(options[index]))),
                                          actions: [
                                            TextButton(
                                              onPressed: () =>
                                                  Navigator.pop(context),
                                              child: Text(
                                                'Close',
                                                style: TextStyle(
                                                    color: Colors.red[400]),
                                              ),
                                            )
                                          ],
                                        );
                                      },
                                    );
                                  },
                                  child: Image.asset(
                                    imgPath(options[index]),
                                    height: screenHeight * 0.1,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                    MyButton(
                      page: selectPage(),
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

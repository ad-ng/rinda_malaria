import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:rinda_malaria/components/backButton.dart';
import 'package:rinda_malaria/components/headers.dart';
import 'package:rinda_malaria/components/mybutton.dart';
import 'package:rinda_malaria/pages/page_5.dart';

class Page4 extends StatefulWidget {
  const Page4({
    super.key,
  });

  @override
  State<Page4> createState() => _Page4State();
}

List options = ['AL', 'DHAP', 'ASPY'];

class _Page4State extends State<Page4> {
  String currentOption = options[0];

  medToRemoveFunction() {
    if (currentOption == 'AL') {
      //return 'DHAP';
      return [
        'DHAP',
        'ASPY',
      ];
    } else if (currentOption == 'DHAP') {
      // return 'AL';
      return [
        'AL',
        'ASPY',
      ];
    } else if (currentOption == 'ASPY') {
      //return 'ASPY';
      return [
        'AL',
        'DHAP',
      ];
    }
  }

  imgPath(umuti) {
    if (umuti == 'AL') {
      return '././lib/images/AL.jpeg';
    } else if (umuti == 'DHAP') {
      return '././lib/images/DHAP.jpeg';
    } else {
      return '././lib/images/ASPY.jpeg';
    }
  }

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
                color: Colors.black.withOpacity(0),
              ),
            ),
            Column(
              children: [
                BackButtonCustom(
                  isLast: false,
                ),
                Headers(),
                Padding(
                  padding: const EdgeInsets.symmetric(),
                  child: Text(
                    'Medicine Given Last Time',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 30,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
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
                              contentPadding:
                                  EdgeInsets.only(top: 20, left: 10, right: 20),
                              title: Text(
                                options[
                                    index], // Use filteredPlace[index] instead of options[index]
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
                                        title:
                                            Text('Medicine: ${options[index]}'),
                                        content: SizedBox(
                                            height: 350,
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
                              ));
                        },
                      ),
                    ),
                  ),
                ),
                MyButton(
                    page: Page5(
                  options: medToRemoveFunction(),
                )),
                SizedBox(
                  height: screenHeight * 0.035,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

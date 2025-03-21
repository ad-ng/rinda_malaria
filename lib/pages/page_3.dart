import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:rinda_malaria/components/backButton.dart';
import 'package:rinda_malaria/components/headers.dart';
import 'package:rinda_malaria/components/mybutton.dart';
import 'package:rinda_malaria/pages/page_4.dart';
import 'package:rinda_malaria/pages/page_5.dart';

class Page3 extends StatefulWidget {
  const Page3({
    super.key,
  });

  @override
  State<Page3> createState() => _Page3State();
}

List<String> options = ['New Case', 'Suspected Treatment Failure'];

class _Page3State extends State<Page3> {
  String currentOption = options[0];
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
                    'Case Definition',
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
                            trailing: (options[index] ==
                                    'Suspected Treatment Failure')
                                ? IconButton(
                                    onPressed: () {
                                      showAdaptiveDialog(
                                        context: context,
                                        builder: (context) =>
                                            AlertDialog.adaptive(
                                          backgroundColor: Colors.white,
                                          title: Text(
                                            'Treatment Failure Definition',
                                            style: TextStyle(fontSize: 20),
                                          ),
                                          content: Text(
                                              textAlign: TextAlign.start,
                                              style: TextStyle(fontSize: 18),
                                              '1. Absence of Therapeutic Response (TR) after 3 days of treatment with ACTs, within 28 days \n2. Persistence of Symptoms or \n3. Clinical Deterioration \n4. Confirmed by Microscopy+ (Parasitemia)'),
                                          actions: [
                                            TextButton(
                                              onPressed: () =>
                                                  Navigator.pop(context),
                                              child: Text(
                                                'close',
                                                style: TextStyle(
                                                  color: Colors.red,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      );
                                    },
                                    icon: Icon(
                                      Icons.info,
                                      color: Colors.blue,
                                      size: 40,
                                    ),
                                  )
                                : SizedBox.shrink(),
                          );
                        },
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.2,
                ),
                MyButton(
                  page: (currentOption == 'Suspected Treatment Failure')
                      ? Page4()
                      : Page5(
                          options: ['AL', 'DHAP', 'ASPY'],
                        ),
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
  }
}

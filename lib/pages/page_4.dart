import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:rinda_malaria/components/backButton.dart';
import 'package:rinda_malaria/components/mySearch.dart';
import 'package:rinda_malaria/components/mybutton.dart';
import 'package:rinda_malaria/pages/page_5.dart';

class Page4 extends StatefulWidget {
  Page4({
    super.key,
  });

  @override
  State<Page4> createState() => _Page4State();
}

List<String> options = [
  'Bugesera',
  'Gicumbi',
  'Kayonza',
  'Ngoma',
  'Nyamasheke',
  'Ruhango',
  'Burera',
  'Gisagara',
  'Kicukiro',
  'Ngororero',
  'Nyanza',
  'Rulindo',
  'Gakenke',
  'Huye',
  'Kirehe',
  'Nyabihu',
  'Nyarugenge',
  'Rusizi',
  'Gasabo',
  'Kamonyi',
  'Muhanga',
  'Nyagatare',
  'Nyaruguru',
  'Rutsiro',
  'Gatsibo',
  'Karongi',
  'Musanze',
  'Nyamagabe',
  'Rubavu',
  'Rwamagana'
];
List<String> filteredPlace = [];
TextEditingController textEditingController = new TextEditingController();

class _Page4State extends State<Page4> {
  String currentOption = options[0];

  @override
  void initState() {
    super.initState();
    filteredPlace = options;
    textEditingController.addListener(() {
      filterLocations(textEditingController.text);
    });
  }

  void filterLocations(String query) {
    setState(() {
      if (query.isEmpty) {
        filteredPlace = options; // Reset to all places when search is empty
      } else {
        filteredPlace = options
            .where((place) => place.toLowerCase().contains(query.toLowerCase()))
            .toList();
      }
    });
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
                color: Colors.black.withOpacity(
                    0), // Optional: overlay to make it darker or transparent
              ),
            ),
            Column(
              children: [
                BackButtonCustom(
                  isLast: false,
                ),
                //Headers(),
                Padding(
                  padding: const EdgeInsets.symmetric(),
                  child: Text(
                    'Aho Yivurije Ubushize',
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
                Mysearch(textEditingController: textEditingController),
                SizedBox(
                  height: 15,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Card(
                      color: Colors.white,
                      child: ListView.builder(
                        itemCount: filteredPlace.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(
                              filteredPlace[
                                  index], // Use filteredPlace[index] instead of options[index]
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20),
                            ),
                            leading: Radio(
                              activeColor: Colors.black,
                              value: filteredPlace[index],
                              groupValue: currentOption,
                              onChanged: (value) {
                                setState(() {
                                  currentOption = value.toString();
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
  }
}

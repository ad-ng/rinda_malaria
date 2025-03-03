import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:rinda_malaria/components/backButton.dart';
import 'package:rinda_malaria/components/headers.dart';
import 'package:rinda_malaria/components/mySearch.dart';
import 'package:rinda_malaria/components/mybutton.dart';
import 'package:rinda_malaria/model/placeModel.dart';
import 'package:rinda_malaria/pages/page_5.dart';

class Page4 extends StatefulWidget {
  Page4({
    super.key,
  });

  @override
  State<Page4> createState() => _Page4State();
}

List<Placemodel> options = [
  Placemodel(district: 'Bugesera', block: 'Block A'),
  Placemodel(district: 'Gicumbi', block: 'Block A'),
  Placemodel(district: 'Kayonza', block: 'Block A'),
  Placemodel(district: 'Ngoma', block: 'Block A'),
  Placemodel(district: 'Nyamasheke', block: 'Block C'),
  Placemodel(district: 'Ruhango', block: 'Block B'),
  Placemodel(district: 'Burera', block: 'Block C'),
  Placemodel(district: 'Gisagara', block: 'Block B'),
  Placemodel(district: 'Kicukiro', block: 'Block A'),
  Placemodel(district: 'Ngororero', block: 'Block C'),
  Placemodel(district: 'Nyanza', block: 'Block B'),
  Placemodel(district: 'Rulindo', block: 'Block C'),
  Placemodel(district: 'Gakenke', block: 'Block C'),
  Placemodel(district: 'Huye', block: 'Block B'),
  Placemodel(district: 'Kirehe', block: 'Block A'),
  Placemodel(district: 'Nyabihu', block: 'Block C'),
  Placemodel(district: 'Nyarugenge', block: 'Block A'),
  Placemodel(district: 'Rusizi', block: 'Block C'),
  Placemodel(district: 'Gasabo', block: 'Block A'),
  Placemodel(district: 'Kamonyi', block: 'Block B'),
  Placemodel(district: 'Muhanga', block: 'Block B'),
  Placemodel(district: 'Nyagatare', block: 'Block A'),
  Placemodel(district: 'Nyaruguru', block: 'Block B'),
  Placemodel(district: 'Rutsiro', block: 'Block C'),
  Placemodel(district: 'Gatsibo', block: 'Block A'),
  Placemodel(district: 'Karongi', block: 'Block C'),
  Placemodel(district: 'Musanze', block: 'Block C'),
  Placemodel(district: 'Nyamagabe', block: 'Block B'),
  Placemodel(district: 'Rubavu', block: 'Block C'),
  Placemodel(district: 'Rwamagana', block: 'Block A')
];
List<Placemodel> filteredPlace = [];
TextEditingController textEditingController = new TextEditingController();

class _Page4State extends State<Page4> {
  String currentOption = options[0].district;

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
            .where((place) =>
                place.district.toLowerCase().contains(query.toLowerCase()))
            .toList();
      }
    });
  }

  String medToRemoveBlock = 'Block A';
  medToRemoveFunction() {
    if (medToRemoveBlock == 'Block A') {
      //return 'DihydroartemisininPiperaquine';
      return [
        'Artemether Lumefantrine',
        'Artesunate -Pyronaridine',
      ];
    } else if (medToRemoveBlock == 'Block B') {
      // return 'Artemether Lumefantrine';
      return [
        'DihydroartemisininPiperaquine',
        'Artesunate -Pyronaridine',
      ];
    } else if (medToRemoveBlock == 'Block C') {
      //return 'Artesunate -Pyronaridine';
      return [
        'Artemether Lumefantrine',
        'DihydroartemisininPiperaquine',
      ];
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
                Mysearch(textEditingController: textEditingController),
                SizedBox(
                  height: 5,
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
                              filteredPlace[index]
                                  .district, // Use filteredPlace[index] instead of options[index]
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20),
                            ),
                            leading: Radio(
                              activeColor: Colors.black,
                              value: filteredPlace[index].district,
                              groupValue: currentOption,
                              onChanged: (value) {
                                setState(() {
                                  currentOption = value.toString();
                                  print(currentOption);
                                  print('...............................');
                                  medToRemoveBlock = options
                                      .where((place) =>
                                          place.district == currentOption)
                                      .first
                                      .block;
                                  print(medToRemoveBlock);
                                });
                              },
                            ),
                          );
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

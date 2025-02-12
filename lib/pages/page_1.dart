import 'package:flutter/material.dart';
import 'package:rinda_malaria/components/mybutton.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

List<String> options = ['afite malaria', 'nta malaria afite'];

class _Page1State extends State<Page1> {
  String currentOption = options[0];
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: screenHeight * 0.25,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Amakaru kumurwayi',
              style: TextStyle(
                color: Colors.green,
                fontSize: 30,
              ),
            ),
          ),
          ListTile(
            title: Text('Umurwayi afite malaria'),
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
            title: Text('Umurwayi nta malaria afite'),
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
          MyButton()
        ],
      ),
    );
  }
}

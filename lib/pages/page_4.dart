import 'package:flutter/material.dart';
import 'package:rinda_malaria/components/mybutton.dart';
import 'package:rinda_malaria/pages/page_5.dart';

class Page4 extends StatefulWidget {
  const Page4({super.key});

  @override
  State<Page4> createState() => _Page3State();
}

List<String> options_aged = [
  'Ibiro 5 - <15 ',
  'Ibiro 15 - <25 ',
  'Ibiro 25 - <35 ',
  'Ibiro 35 no kuzamura'
];

class _Page3State extends State<Page4> {
  String currentOption_age = options_aged[0];
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: screenHeight * 0.1,
          ),
          Text(
            'Emeza ibiro :',
            style: TextStyle(color: Colors.green, fontSize: 30),
          ),
          SizedBox(
            height: screenHeight * 0.03,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: options_aged.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(options_aged[index]),
                  leading: Radio(
                    value: options_aged[index],
                    groupValue: currentOption_age,
                    onChanged: (value) {
                      setState(() {
                        currentOption_age = value.toString();
                      });
                    },
                  ),
                );
              },
            ),
          ),
          MyButton(page: Page5()),
          SizedBox(
            height: screenHeight * 0.2,
          )
        ],
      ),
    );
  }
}

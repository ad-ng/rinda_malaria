import 'package:flutter/material.dart';

class Page5 extends StatefulWidget {
  const Page5({super.key});

  @override
  State<Page5> createState() => _Page5State();
}

class _Page5State extends State<Page5> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: screenHeight * 0.05,
          ),
          Center(
            child: Text('umurwayi uramuha umuti ungana gutya'),
          ),
          Center(
            child: Text('ngano y’ umutiafata kumunsi'),
          ),
          Center(
            child: Text('Uko umurwayi afata umuti'),
          )
        ],
      ),
    );
  }
}

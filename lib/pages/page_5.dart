import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rinda_malaria/model/igikorwa.dart';

class Page5 extends StatefulWidget {
  const Page5({super.key});

  @override
  State<Page5> createState() => _Page5State();
}

class _Page5State extends State<Page5> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Consumer<Igikorwa>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: screenHeight * 0.05,
            ),
            Card(
              margin: EdgeInsets.all(10),
              color: Colors.blueGrey[300],
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Ingano yumuti afata kumunsi: \n${value.inganoYumuti().toString()}',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            Card(
                margin: EdgeInsets.all(10),
                color: Colors.blueGrey[300],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Ireme ry’umuti (Ubwoko bw’ umuti): \n${value.iremeRyumuti()}',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                )),
            Card(
                color: Colors.blueGrey[300],
                margin: EdgeInsets.all(10),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Uko umurwayi afata umuti: \n ${value.ukoUmutiUtangwa()}',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

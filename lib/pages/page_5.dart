import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rinda_malaria/components/backButton.dart';
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
        //appBar: AppBar(),
        body: Stack(
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
            Stack(
              children: [
                Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    BackButtonCustom(
                      isLast: true,
                    ),
                    //Headers(),

                    Card(
                      margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Ingano y\'umuti (Dosage): \n${value.inganoYumuti().toString()}',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),
                    ),

                    Expanded(
                        child: ListView.builder(
                      itemCount: value.ukoUmutiUtangwa().length,
                      itemBuilder: (context, index) {
                        return Card(
                          margin:
                              EdgeInsets.only(left: 10, right: 10, bottom: 10),
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Ireme ry’umuti (Strength):  ',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 20),
                                    ),
                                    Text(
                                      value.iremeRyumuti()[index],
                                      style: TextStyle(
                                          color: Colors.green[900],
                                          fontSize: 20),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Uko umurwayi afata umuti:  ',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 20),
                                    ),
                                    Text(
                                      value.ukoUmutiUtangwa()[index],
                                      style: TextStyle(
                                          color: Colors.green[900],
                                          fontSize: 20),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ))
                  ],
                ),
                Align(
                  alignment: Alignment(0.8, -0.82),
                  child: Transform.rotate(
                    angle: 270 * 3.14159 / 180,
                    child: Image.asset(
                      '././lib/images/Animation - 1740305084861.gif',
                      height: 70,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

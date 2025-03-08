import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rinda_malaria/components/backButton.dart';
import 'package:rinda_malaria/components/headers.dart';

class Page10 extends StatefulWidget {
  final String ibiro;
  const Page10({super.key, required this.ibiro});

  @override
  State<Page10> createState() => _Page10State();
}

class _Page10State extends State<Page10> {
  @override
  Widget build(BuildContext context) {
    inganoYumuti() {
      if (widget.ibiro == 'Ibiro 5 -< 8') {
        return '➤ 20mg/160mg';
      }
      if (widget.ibiro == 'Ibiro 8 -< 11') {
        return '➤ 30mg/240mg';
      }
      if (widget.ibiro == 'Ibiro 11 -< 17') {
        return '➤ 40mg/320mg';
      }
      if (widget.ibiro == 'Ibiro 17 -< 25') {
        return '➤ 60mg/480mg';
      }
      if (widget.ibiro == 'Ibiro 25 -< 36') {
        return '➤ 80mg/640mg';
      }
      if (widget.ibiro == 'Ibiro 36 -< 60') {
        return '➤ 120/960 mg';
      }
      if (widget.ibiro == 'Ibiro 60 -< 80') {
        return '➤ 160/1280 mg';
      }
      if (widget.ibiro == 'Ibiro 80 Kuzamura') {
        return '➤ 200/1600 mg';
      }
    }

    iremeRyumuti() {
      if (widget.ibiro == 'Ibiro 5 -< 8') {
        return [
          '20mg/160mg',
        ];
      }
      if (widget.ibiro == 'Ibiro 8 -< 11') {
        return [
          '30mg/240mg',
        ];
      }
      if (widget.ibiro == 'Ibiro 11 -< 17') {
        return [
          '40mg/320mg',
          '20mg/160mg',
        ];
      }
      if (widget.ibiro == 'Ibiro 17 -< 25') {
        return [
          '30mg/240mg',
          '20mg/160mg',
        ];
      }
      if (widget.ibiro == 'Ibiro 25 -< 36') {
        return [
          '80mg/640mg',
          '40mg/320mg',
          '20mg/160mg',
        ];
      }
      if (widget.ibiro == 'Ibiro 36 -< 60') {
        return [
          '40mg/320mg',
          '20mg/160mg',
          '30mg/240mg',
        ];
      }
      if (widget.ibiro == 'Ibiro 60 -< 80') {
        return [
          '80mg/640mg',
          '40mg/320mg',
          '20mg/160mg',
        ];
      }
      if (widget.ibiro == 'Ibiro 80 Kuzamura') {
        return [
          '40mg/320mg',
          '20mg/160mg',
        ];
      }
    }

    ukoUmutiUtangwa() {
      if (widget.ibiro == 'Ibiro 5 -< 8') {
        return [
          '3 (Ikinini 1 ku munsi mu minsi 3)',
        ];
      }
      if (widget.ibiro == 'Ibiro 8 -< 11') {
        return [
          '3 (Ikinini 1 ku munsi mu minsi 3)',
        ];
      }
      if (widget.ibiro == 'Ibiro 11 -< 17') {
        return [
          '3 (Ibinini 1 ku munsi mu minsi 3)',
          '6 (Ibinini 2 ku munsi mu minsi 3)'
        ];
      }
      if (widget.ibiro == 'Ibiro 17 -< 25') {
        return [
          '6 (Ibinini 2 ku munsi mu minsi 3)',
          '9 (Ibinini 3 ku munsi mu minsi 3)'
        ];
      }
      if (widget.ibiro == 'Ibiro 25 -< 36') {
        return [
          '3 (Ikinini 1 ku munsi mu minsi 3)',
          '6 (Ibinini 2 ku munsi mu minsi 3',
          '12 (ibinini 4 ku munsi mu minsi 3)'
        ];
      }
      if (widget.ibiro == 'Ibiro 36 -< 60') {
        return [
          '9 (Ibinini 3 ku munsi mu minsi 3)',
          '18 (ibinini 6 ku munsi mu minsi 3)',
          '12 (Ibinini 4 ku munsi mu minsi 3)'
        ];
      }
      if (widget.ibiro == 'Ibiro 60 -< 80') {
        return [
          '6 (ibinini 2 ku munsi mu minsi 3)',
          '12 (Ibinini 4 ku munsi mu minsi 3)',
          '24 (ibinini 8 ku munsi mu minsi 3)'
        ];
      }
      if (widget.ibiro == 'Ibiro 80 Kuzamura') {
        return [
          '➤ 15 (Ibinini 5 ku munsi mu minsi 3)',
          '➤ 30 (ibinini 10 ku munsi mu minsi 3)'
        ];
      }
    }

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BackButtonCustom(
                  isLast: true,
                ),
                Headers(),
                SizedBox(
                  height: screenHeight * 0.000,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Uko Umuti Utangwa',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.only(left: 10),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      'Ingano Yumuti afata kumunsi: \n ${inganoYumuti()}',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: iremeRyumuti()!.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        margin: EdgeInsets.only(left: 12, right: 12, top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 12, top: 12),
                              child: Text(
                                'Ireme ry\'umuti (Ubwoko bw\' umuti):',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: Text(
                                iremeRyumuti()![index],
                                style: TextStyle(
                                    color: Colors.green, fontSize: 20),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12, top: 12),
                              child: Text(
                                'Uko umurwayi afata umuti:',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 12, bottom: 12),
                              child: Text(
                                ukoUmutiUtangwa()![index],
                                style: TextStyle(
                                    color: Colors.green, fontSize: 20),
                              ),
                            )
                          ],
                        ),
                      );
                    },
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

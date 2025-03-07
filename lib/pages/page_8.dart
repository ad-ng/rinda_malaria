import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rinda_malaria/components/backButton.dart';
import 'package:rinda_malaria/components/headers.dart';
import 'package:rinda_malaria/components/mybutton.dart';
import 'package:rinda_malaria/model/igikorwa.dart';
import 'package:rinda_malaria/pages/page_9.dart';

class Page8 extends StatefulWidget {
  final List<String> options_weigh;
  String currentOption_weigh;
  Page8({
    super.key,
    required this.options_weigh,
    required this.currentOption_weigh,
  });

  @override
  State<Page8> createState() => _Page8State();
}

class _Page8State extends State<Page8> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    selectTable(String umuti) {
      if (umuti == 'AL') {
        return SizedBox(
          width: 500,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.white,
              child: Table(
                columnWidths: {
                  0: FractionColumnWidth(0.12),
                  1: FractionColumnWidth(0.18),
                  2: FractionColumnWidth(0.62)
                },
                border: TableBorder.all(),
                children: [
                  TableRow(
                    children: [
                      Text(
                        'Body Weight in Kg',
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'Artemether (20mg) + Lumefantrine (120mg) Blisters',
                        textAlign: TextAlign.center,
                      ),
                      Column(
                        children: [
                          Text(
                            'Number of Tablets of AL per Dose',
                            textAlign: TextAlign.center,
                          ),
                          Container(
                            child: Table(
                              border: TableBorder.all(),
                              children: [
                                TableRow(
                                  children: [
                                    Text(
                                      'Day 1',
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      'Day 2',
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      'Day 3',
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                ),
                                TableRow(
                                  children: [
                                    Container(
                                      child: Table(
                                        border: TableBorder.all(),
                                        children: [
                                          TableRow(
                                            children: [
                                              Text(
                                                'First Dose',
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                '8 \nHours After',
                                                textAlign: TextAlign.center,
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Table(
                                        border: TableBorder.all(),
                                        children: [
                                          TableRow(
                                            children: [
                                              Text(
                                                '24 \nHours After',
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                '36 \nHours After',
                                                textAlign: TextAlign.center,
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Table(
                                        border: TableBorder.all(),
                                        children: [
                                          TableRow(
                                            children: [
                                              Text(
                                                '48 \nHours After',
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                '60 \nHours After',
                                                textAlign: TextAlign.center,
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  TableRow(
                    children: [
                      Text(
                        '< 15 kg',
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        '6x1',
                        textAlign: TextAlign.center,
                      ),
                      Container(
                        child: Table(
                          border: TableBorder.all(),
                          children: [
                            TableRow(
                              children: [
                                Text(
                                  '1\n ',
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  '1',
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  '1',
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  '1',
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  '1',
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  '1',
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  TableRow(
                    children: [
                      Text(
                        '15 kg to< 25 kg',
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        '6x2',
                        textAlign: TextAlign.center,
                      ),
                      Container(
                        child: Table(
                          border: TableBorder.all(),
                          children: [
                            TableRow(
                              children: [
                                Text(
                                  '2\n ',
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  '2',
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  '2',
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  '2',
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  '2',
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  '2',
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  TableRow(
                    children: [
                      Text(
                        '25 kg to < 35 kg',
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        '6x3',
                        textAlign: TextAlign.center,
                      ),
                      Container(
                        child: Table(
                          border: TableBorder.all(),
                          children: [
                            TableRow(
                              children: [
                                Text(
                                  '3\n',
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  '3',
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  '3',
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  '3',
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  '3',
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  '3',
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  TableRow(
                    children: [
                      Text(
                        '≥ 35 kg',
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        '6x4',
                        textAlign: TextAlign.center,
                      ),
                      Container(
                        child: Table(
                          border: TableBorder.all(),
                          children: [
                            TableRow(
                              children: [
                                Text(
                                  '4\n',
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  '4',
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  '4',
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  '4',
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  '4',
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  '4',
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      } else if (umuti == 'ASPY') {
        return SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Table(
            border: TableBorder.all(),
            children: [
              TableRow(
                children: [
                  Text('Formulations Available'),
                  Text('Body Weight (kg)'),
                  Text('Dosage'),
                  Text('Prescription'),
                ],
              ),
              TableRow(
                children: [
                  Text('Oral Suspension of Granules'),
                  Container(
                    child: Table(
                      border: TableBorder.all(),
                      children: [
                        TableRow(
                          children: [
                            Text('≥ 5 to <8'),
                          ],
                        ),
                        TableRow(
                          children: [
                            Text('data'),
                          ],
                        ),
                        TableRow(
                          children: [
                            Text('data'),
                          ],
                        )
                      ],
                    ),
                  ),
                  Text('data'),
                  Text('data'),
                ],
              ),
              TableRow(
                children: [
                  Text('Tablets'),
                  Text('data'),
                  Text('data'),
                  Text('data'),
                ],
              )
            ],
          ),
        );
      }
    }

    return Consumer<Igikorwa>(
      builder: (context, value, child) {
        value.ibiro = widget.currentOption_weigh;
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
                        'Emeza ibiro',
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
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          SizedBox(
                            child: selectTable('ASPY'),
                          ),
                        ],
                      ),
                    ),
                    MyButton(page: Page9()),
                    SizedBox(
                      height: screenHeight * 0.08,
                    )
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  TableRow buildRow(List<String> cells) => TableRow(
        children: cells.map((cell) {
          return Padding(
            padding: const EdgeInsets.all(12),
            child: Center(child: Text(cell)),
          );
        }).toList(),
      );
}

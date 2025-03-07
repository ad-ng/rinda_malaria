import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rinda_malaria/components/backButton.dart';
import 'package:rinda_malaria/components/headers.dart';
import 'package:rinda_malaria/components/mybutton.dart';
import 'package:rinda_malaria/model/igikorwa.dart';
import 'package:rinda_malaria/pages/page_9.dart';

class Page8 extends StatefulWidget {
  String umuti;
  Page8({super.key, required this.umuti});

  @override
  State<Page8> createState() => _Page8State();
}

class _Page8State extends State<Page8> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    selectTable(String umuti) {
      print(widget.umuti);
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
          width: 580,
          child: Card(
            child: Table(
              columnWidths: {
                0: FractionColumnWidth(0.22),
                1: FractionColumnWidth(0.20),
                2: FractionColumnWidth(0.22),
                3: FractionColumnWidth(0.36)
              },
              border: TableBorder.all(),
              children: [
                TableRow(
                  children: [
                    Text(
                      'Formulations Available',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'Body Weight (kg)',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'Dosage',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'Prescription',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(3),
                      child: Text(
                        'Oral Suspension of Granules',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      child: Table(
                        border: TableBorder.all(),
                        children: [
                          TableRow(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(3),
                                child: Text(
                                  '≥ 5 to <8',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(3),
                                child: Text(
                                  '8 to <15',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(3),
                                child: Text(
                                  '15 to <20',
                                  textAlign: TextAlign.center,
                                ),
                              ),
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
                              Padding(
                                padding: const EdgeInsets.all(3),
                                child: Text(
                                  '20 mg + 60 mg',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(3),
                                child: Text(
                                  '40 mg + 120 mg',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(3),
                                child: Text(
                                  '60 mg + 180 mg',
                                  textAlign: TextAlign.center,
                                ),
                              ),
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
                              Padding(
                                padding: const EdgeInsets.all(3),
                                child: Text(
                                  '1 Sachet per Day for 3 Days',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(3),
                                child: Text(
                                  '2 Sachets per Day for 3 Days',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(3),
                                child: Text(
                                  '3 Sachets per Day for 3 Days',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Text(
                      'Tablets',
                      textAlign: TextAlign.center,
                    ),
                    Container(
                      child: Table(
                        border: TableBorder.all(),
                        children: [
                          TableRow(
                            children: [
                              Text(
                                '20 to <24\n',
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Text(
                                '24 to <45\n',
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Text(
                                '45 to <65\n',
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Text(
                                '≥65\n',
                                textAlign: TextAlign.center,
                              ),
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
                                '60 mg + 180 mg\n',
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Text(
                                '120 mg + 360 mg\n',
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Text(
                                '180 mg + 540 mg\n',
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Text(
                                '240 mg + 720 mg\n',
                                textAlign: TextAlign.center,
                              ),
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
                                '1 Tablet per Day for 3 Days \n(1 Blister of 3 Tablets)',
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Text(
                                '2 Tablets per Day for 3 Days \n(2 Blisters of 3 Tablets)',
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Text(
                                '3 Tablets per Day for 3 Days \n(3 Blisters of 3 Tablets)',
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Text(
                                '4 Tablets per Day for 3 Days \n(4 Blisters of 3 Tablets)',
                                textAlign: TextAlign.center,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      } else if (umuti == 'DHAP') {
      } else if (umuti == 'simple+mds') {
      } else if (umuti == 'severe') {
        return SizedBox(
          width: 580,
          child: Card(
            child: Column(
              children: [
                Table(
                  columnWidths: {
                    0: FractionColumnWidth(0.16),
                    1: FractionColumnWidth(0.2),
                    2: FractionColumnWidth(0.64),
                  },
                  border: TableBorder.all(),
                  children: [
                    TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(3),
                          child: Text(
                            'Body Weight in KG',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3),
                          child: Text(
                            'Artesunate Inj',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          child: Table(
                            border: TableBorder.all(),
                            children: [
                              TableRow(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(6),
                                    child: Text(
                                      'Artesunate Dose',
                                      textAlign: TextAlign.center,
                                    ),
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
                                            Padding(
                                              padding: const EdgeInsets.all(7),
                                              child: Text(
                                                'Time : HO',
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(7.0),
                                              child: Text(
                                                'Time : H12',
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(7.0),
                                              child: Text(
                                                'Time : H24',
                                                textAlign: TextAlign.center,
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
                        )
                      ],
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            '< 20 Kg',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            'Artesunate Inj',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          child: Table(
                            border: TableBorder.all(),
                            children: [
                              TableRow(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Text(
                                      '3.0 mg per Kg',
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Text(
                                      '3.0 mg per Kg',
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Text(
                                      '3.0 mg per Kg',
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            '> 20 Kg',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            'Artesunate Inj',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          child: Table(
                            border: TableBorder.all(),
                            children: [
                              TableRow(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Text(
                                      '2.4 mg per Kg',
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Text(
                                      '2.4 mg per Kg',
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Text(
                                      '2.4 mg per Kg',
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Table(
                  border: TableBorder.all(),
                  columnWidths: {
                    0: FractionColumnWidth(0.16),
                    1: FractionColumnWidth(0.84),
                  },
                  children: [
                    TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Note:',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          child: Table(
                            border: TableBorder.all(),
                            children: [
                              TableRow(children: [
                                Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Hospital:',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                          ' After 24h, evaluate and switch to the appropriate ACT \nif improvement. If not continue with Artesunate every 24h \n(Maximum 7 days) until the patient can take Oral \nMedication.'),
                                    ],
                                  ),
                                )
                              ]),
                              TableRow(children: [
                                Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'HC:',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                          ' Provide the pre-transfer Treatment and refer to the nearest \nHospital with examined slide'),
                                    ],
                                  ),
                                )
                              ])
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        );
      }
    }

    return Consumer<Igikorwa>(
      builder: (context, value, child) {
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
                        'Uko Umuti Utangwa',
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
                            child: selectTable(widget.umuti),
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

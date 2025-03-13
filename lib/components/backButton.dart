import 'package:flutter/material.dart';
import 'package:rinda_malaria/pages/page_1.dart';

class BackButtonCustom extends StatelessWidget {
  const BackButtonCustom({super.key, required this.isLast});
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_sharp,
            size: 40,
          ),
        ),
        isLast
            ? TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text(
                          'IBIGOMBA KWITABWAHO: ',
                          style: TextStyle(fontSize: 20),
                        ),
                        content: Text(
                          '1.Kunywera umuti imbere ya muganga \n2.Kurangiza umuti uko wawandikiwe \n3.Kudasaranganya umuti \n4.Gushakisha abandi barwayi bari mu muryango \n5.Kugaruka kwa muganga mu gihe ugize ikindi kibazo',
                          style: TextStyle(fontSize: 16),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text(
                              'FUNGA',
                              style: TextStyle(color: Colors.redAccent[100]),
                            ),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Page1(),
                                  ),
                                );
                              },
                              child: Text(
                                'AHABANZA',
                                style: TextStyle(color: Colors.redAccent[100]),
                              ))
                        ],
                      );
                    },
                  );
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.restart_alt_rounded,
                      size: 28,
                      color: Colors.black,
                    ),
                    Text(
                      'Message',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    )
                  ],
                ),
              )
            : Container()
      ],
    );
  }
}

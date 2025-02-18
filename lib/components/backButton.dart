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
                        title: Text('Kwibutsa Umurwayi ibi bikurikira:'),
                        content: Text(
                            '➤ Kunywera umuti (Dose yambere imbere ya muganga)\n ➤ Musobanurire uko agomba kunywa doses zikurikira \n ➤ Musobanurire ko ari ngombwa kunywa umuti wose akawumara \n ➤ Ko abujijwe gusangira umuti nabandi barwayi \n ➤ Mugihe hari undi murwayi mu rugo cyangwa mubaturanyi agomba kujyanwa kw\'ivuriro cyangwa umujyanama w\'ubuzima\n ➤ Mugihe ukomeje kubona ibimenyetso by\'uburwayi nyuma yo kurangiza umuti wandikiwe, subira kumujyanama w\'ubuzima cyangwa kw\'ivuriro bagufashe'),
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
                      'AHABANZA',
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

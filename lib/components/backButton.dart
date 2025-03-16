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
                          'THINGS TO BE CONSIDERED: ',
                          style: TextStyle(fontSize: 20),
                        ),
                        content: Text(
                          '1. Take the first dose in from the Clinician \n2. Educate the patient to take the full medication (dose) \n3. Do not share medication with family members  \n4. Check if no other family members have signs/symptoms \n5. Explain the possible drug side effect   \n6. Ask the patient to come back if any problem',
                          style: TextStyle(fontSize: 16),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text(
                              'Close',
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
                                'Home',
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

import 'package:flutter/material.dart';

class BackButtonCustom extends StatelessWidget {
  const BackButtonCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: ListTile(
        horizontalTitleGap: 5,
        leading: Icon(Icons.arrow_back_sharp),
        title: Text(
          'Subira Inyuma',
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}

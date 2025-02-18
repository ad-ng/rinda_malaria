import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rinda_malaria/model/igikorwa.dart';
import 'package:rinda_malaria/pages/page_1.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Igikorwa(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        colorScheme: ColorScheme.light(
          //surface: Color.fromARGB(183, 96, 125, 139),
          primary: Colors.grey.shade400,
          secondary: Colors.grey.shade200,
        ),
      ),
      home: Page1(),
    );
  }
}

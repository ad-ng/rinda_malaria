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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: Page1(),
    );
  }
}

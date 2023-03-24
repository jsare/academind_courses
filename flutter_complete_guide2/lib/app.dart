import 'package:flutter/material.dart';

import 'screens/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: const MyHomePage(),
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.cyan,
        fontFamily: 'Quicksand',
      ),
    );
  }
}

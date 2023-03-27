import 'package:flutter/material.dart';

import './screens/categories_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.pink,
        canvasColor: const Color.fromRGBO(225, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
            bodyLarge: const TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
            titleLarge: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
            titleMedium: const TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'RobotoCondensed',
            )),
      ),
      home: const CategoriesScreen(),
    );
  }
}

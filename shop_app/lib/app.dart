import 'package:flutter/material.dart';

import 'screens/products_overview_screen.dart';

class ShopApp extends StatelessWidget {
  const ShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shop App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProductsOverwiewScreen(),
    );
  }
}

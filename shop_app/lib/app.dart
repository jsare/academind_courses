import 'package:flutter/material.dart';

import 'screens/products_overview_screen.dart';
import './screens/product_detail_screen.dart';
import 'package:provider/provider.dart';

import './providers/products.dart';

class ShopApp extends StatelessWidget {
  const ShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Products(),
      child: MaterialApp(
        title: 'Shop App',
        theme: ThemeData(
          useMaterial3: true,
          colorSchemeSeed: Colors.purple,
          fontFamily: 'Lato',
        ),
        home: const ProductsOverwiewScreen(),
        routes: {
          ProductDetailScreen.routeName: (ctx) => const ProductDetailScreen(),
        },
      ),
    );
  }
}

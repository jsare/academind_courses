import 'package:flutter/material.dart';

import '../widgets/products_grid.dart';

class ProductsOverwiewScreen extends StatelessWidget {
  const ProductsOverwiewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My shop'),
      ),
      body: const ProductsGrid(),
    );
  }
}

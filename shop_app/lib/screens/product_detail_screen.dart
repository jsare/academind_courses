import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/product-detail';

  const ProductDetailScreen({super.key});
  // final String title;
  // final double price;
  //
  // const ProductDetailScreen({
  //   required this.price,
  //   required this.title,
  //   super.key,
  // });

  @override
  Widget build(BuildContext context) {
    final productId =
        ModalRoute.of(context)!.settings.arguments as String; // Is the id
    return Scaffold(
      appBar: AppBar(
        title: const Text('title'),
      ),
      body: Column(),
    );
  }
}

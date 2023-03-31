import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  const ProductItem({
    super.key,
    required this.id,
    required this.title,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return GridTile(
      footer: GridTileBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.favorite),
        ),
        backgroundColor:
            Theme.of(context).colorScheme.onSurfaceVariant.withOpacity(0.54),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.surface,
          ),
          textAlign: TextAlign.center,
          maxLines: 2,
          textScaleFactor: 0.8,
        ),
        trailing: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.shopping_cart),
        ),
      ),
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}

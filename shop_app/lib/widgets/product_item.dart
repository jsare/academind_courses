import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../screens/product_detail_screen.dart';
import '../providers/product.dart';

class ProductItem extends StatelessWidget {
  // final String id;
  // final String title;
  // final String imageUrl;

  const ProductItem({
    super.key,
    // required this.id,
    // required this.title,
    // required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: GridTile(
        footer: GridTileBar(
          leading: IconButton(
            onPressed: () {
              product.toogleFavoriteStatus();
            },
            icon: Icon(
              product.isFavorite
                  ? Icons.favorite_rounded
                  : Icons.favorite_outline_rounded,
            ),
            color: Theme.of(context).colorScheme.secondaryContainer,
          ),
          backgroundColor:
              Theme.of(context).colorScheme.scrim.withOpacity(0.87),
          title: Text(
            product.title,
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
            color: Theme.of(context).colorScheme.secondaryContainer,
          ),
        ),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(
              ProductDetailScreen.routeName,
              arguments: product.id,
            );
          },
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

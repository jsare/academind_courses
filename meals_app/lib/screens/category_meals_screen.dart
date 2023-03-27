import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category-meals';
  const CategoryMealsScreen({super.key});

  /*  final String categoryId; // This constructor using for Option 1
  final String categoryTitle;

  const CategoryMealsScreen({
    required this.categoryId,
    required this.categoryTitle,
    super.key,
  });
   */

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'].toString();
    final categoryId = routeArgs['id'];

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: const Center(
        child: Text('The Recipes For the Category!'),
      ),
    );
  }
}

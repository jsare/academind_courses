import 'package:flutter/material.dart';
import 'package:meals_app/dummy_data.dart';
import '../models/meal.dart';

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
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return Text('${categoryMeals[index].title}');
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}

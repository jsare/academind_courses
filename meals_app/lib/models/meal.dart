// enum Complexity {
//   simple,
//   challenging,
//   hard,
// }

enum Complexity {
  simple('Simple'),
  challenging('Challenging'),
  hard('Hard');

  final String value;

  const Complexity(this.value);
}

// enum Afforfability {
//   affordable,
//   pricey,
//   luxurious,
// }

enum Afforfability {
  affordable('Affordable'),
  pricey('Pricey'),
  luxurious('Luxurios');

  final String value;

  const Afforfability(this.value);
}

class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;
  final int duration;
  final Complexity complexity;
  final Afforfability affordability;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;

  const Meal({
    required this.id,
    required this.categories,
    required this.title,
    required this.imageUrl,
    required this.ingredients,
    required this.steps,
    required this.duration,
    required this.complexity,
    required this.affordability,
    required this.isGlutenFree,
    required this.isLactoseFree,
    required this.isVegan,
    required this.isVegetarian,
  });
}

import 'package:flutter/material.dart';

import '../screens/filters_screen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 120,
            padding: const EdgeInsets.all(16),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).colorScheme.primaryContainer,
            child: Text(
              'Cooking Up!',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
          const SizedBox(height: 24),
          BuildListTile(
            title: 'Meals',
            icon: Icons.restaurant,
            tapHandler: () => Navigator.of(context).pushNamed('/'),
          ),
          BuildListTile(
            title: 'Filters',
            icon: Icons.settings,
            tapHandler: () =>
                Navigator.of(context).pushNamed(FiltersScreen.routeName),
          ),
        ],
      ),
    );
  }
}

class BuildListTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback tapHandler;
  const BuildListTile({
    required this.title,
    required this.icon,
    required this.tapHandler,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: tapHandler,
    );
  }
}

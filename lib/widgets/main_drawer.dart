import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key, required this.onSelectScreen});

  final void Function(String identifier) onSelectScreen;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Theme.of(context).colorScheme.primaryContainer,
              Theme.of(context).colorScheme.primaryContainer.withOpacity(0.7),
            ])),
            child: Row(
              children: [
                Icon(
                  Icons.fastfood,
                  size: 40,
                  color: Theme.of(context).colorScheme.primary,
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'Cooking up!',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: Theme.of(context).colorScheme.primary),
                ),
              ],
            ),
          ),
          ListTile(
              leading: Icon(
                Icons.restaurant,
                size: 26,
                color: Theme.of(context).colorScheme.onBackground,
              ),
              title: Text(
                'Meals ......',
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                      fontSize: 24,
                    ),
              ),
              onTap: () {
                onSelectScreen('meals');
              }),
          ListTile(
            leading: Icon(
              Icons.filter,
              size: 26,
              color: Theme.of(context).colorScheme.onBackground,
            ),
            title: Text(
              'Filter',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                    fontSize: 24,
                  ),
            ),
            onTap: () {
              onSelectScreen('fliters');
            },
          ),
        ],
      ),
    );
  }
}

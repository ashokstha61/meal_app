import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meal_app/model/meal.dart';

class FavouriteMealNotifier extends StateNotifier<List<Meal>> {
  FavouriteMealNotifier() : super([]);

  void toggleMealFavouriteStatus(Meal meal) {
    final mealIsFavourite = state.contains(meal);
    if (mealIsFavourite) {
      state = state.where((meals) => meals.id != meal.id).toList();
    } else {
      state = [...state, meal];
    }
  }
}

final favouriteMealProvider =
    StateNotifierProvider<FavouriteMealNotifier, List<Meal>>(
  (ref) => FavouriteMealNotifier(),
);

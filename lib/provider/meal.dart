import 'package:flutter/foundation.dart';

enum Affordability { Affordable, Pricey, Luxurious }
enum Complexity { Simple, Challenging, Hard }

class Meal with ChangeNotifier {
  final String id, title, imageUrl;
  final double duration;
  final Affordability affordability;
  final Complexity complexity;
  final List categories, ingredients, steps;
  final bool isGlutenFree, isVegan, isVegetarian, isLactoseFree;
  bool isFavourite;
  Meal({
    this.isGlutenFree,
    this.isVegan,
    this.isVegetarian,
    this.isLactoseFree,
    this.complexity,
    this.ingredients,
    this.steps,
    this.id,
    this.title,
    this.imageUrl,
    this.duration,
    this.categories,
    this.affordability,
    this.isFavourite = false,
  });

  String get getComplexity {
    return this.complexity == Complexity.Simple
        ? "Simple"
        : this.complexity == Complexity.Challenging
            ? "Challenging"
            : "Hard";
  }

  String get getAffordability {
    return this.affordability == Affordability.Affordable
        ? "Affordable"
        : this.affordability == Affordability.Pricey
            ? "Pricey"
            : "Luxurious";
  }

  void toggleFavourite() {
    isFavourite = !isFavourite;
    notifyListeners();
  }
}

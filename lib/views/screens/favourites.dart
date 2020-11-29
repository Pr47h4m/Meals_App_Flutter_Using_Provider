import 'package:flutter/material.dart';
import 'package:meals/provider/meal_provider.dart';
import 'package:meals/views/components/meal_card.dart';
import 'package:meals/views/screens/meal_details.dart';
import 'package:provider/provider.dart';

class Favourites extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("Build(\"Favourites\")");
    return Consumer<MealProvider>(
      builder: (context, mealProvider, child) => ListView.builder(
        itemCount: mealProvider.favourites.length,
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            Navigator.pushNamed(context, MealDetails.routeName, arguments: {
              "mealId": mealProvider.favourites[index].id,
              "mealTitle": mealProvider.favourites[index].title
            });
          },
          borderRadius: BorderRadius.circular(10),
          child: MealCard(
            meal: mealProvider.favourites[index],
          ),
        ),
      ),
    );
  }
}

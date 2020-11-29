import 'package:flutter/material.dart';
import 'package:meals/provider/meal.dart';
import 'package:meals/provider/meal_provider.dart';
import 'package:meals/views/components/meal_card.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class MealDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("Build(\"Meal_Details\")");
    Meal meal = Provider.of<Meal>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: Consumer<MealProvider>(
        builder: (context, mealProvider, child) => ListView(
          children: [
            MealCard(
              meal: mealProvider.getMealById(meal.id),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "INGREDIENTS",
                  style: Theme.of(context).textTheme.headline5,
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 0.4)),
              height: 200,
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.all(8),
              child: ListView.builder(
                itemCount: mealProvider.getMealById(meal.id).ingredients.length,
                itemBuilder: (context, index) => Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      mealProvider.getMealById(meal.id).ingredients[index],
                      style: Theme.of(context).textTheme.bodyText1.copyWith(
                            color: Colors.white,
                          ),
                    ),
                  ),
                  color: Colors.redAccent,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "STEPS",
                  style: Theme.of(context).textTheme.headline5,
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 0.4)),
              height: 200,
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.all(8),
              child: ListView.builder(
                itemCount: mealProvider.getMealById(meal.id).steps.length,
                itemBuilder: (context, index) => Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      mealProvider.getMealById(meal.id).steps[index],
                      style: Theme.of(context).textTheme.bodyText1.copyWith(
                            color: Colors.white,
                          ),
                    ),
                  ),
                  color: Colors.redAccent,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
      floatingActionButton: Consumer<Meal>(
        builder: (context, meal, child) => FloatingActionButton(
          child:
              Icon(meal.isFavourite ? Icons.favorite : Icons.favorite_border),
          onPressed: () {
            meal.toggleFavourite();
          },
        ),
      ),
    );
  }
}

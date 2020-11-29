import 'package:flutter/material.dart';
import 'package:meals/provider/meal_provider.dart';
import 'package:meals/views/components/meal_card.dart';
import 'package:meals/views/screens/meal_details.dart';
import 'package:provider/provider.dart';

class Favourites extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final favouriteMeals =
        Provider.of<MealProvider>(context, listen: false).favourites;
    print("Build(\"Favourites\")");
    return ListView.builder(
      itemCount: favouriteMeals.length,
      itemBuilder: (context, index) => InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ChangeNotifierProvider.value(
                value: favouriteMeals[index],
                child: MealDetails(),
              ),
            ),
          );
        },
        borderRadius: BorderRadius.circular(10),
        child: MealCard(meal: favouriteMeals[index]),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:meals/provider/meal_provider.dart';
import 'package:meals/views/screens/meal_details.dart';
import 'package:provider/provider.dart';
import 'package:meals/views/components/meal_card.dart';

class Meals extends StatefulWidget {
  static const routeName = "/meals";
  @override
  _MealsState createState() => _MealsState();
}

class _MealsState extends State<Meals> {
  Map<String, String> routeArguments;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<MealProvider>(context, listen: false)
          .diaplayMealsByCategory(routeArguments['category']);
    });
  }

  @override
  Widget build(BuildContext context) {
    routeArguments = ModalRoute.of(context).settings.arguments;
    print("Build(\"Meals\")");
    return Scaffold(
      appBar: AppBar(
        title: Text("${routeArguments['title']}"),
      ),
      body: Consumer<MealProvider>(
        builder: (context, mealProvider, child) => ListView.builder(
          itemCount: mealProvider.displayMeals.length,
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChangeNotifierProvider.value(
                        value: mealProvider.displayMeals[index],
                        child: MealDetails()),
                  ));
            },
            borderRadius: BorderRadius.circular(10),
            child: MealCard(
              meal: mealProvider.displayMeals[index],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:meals/provider/meal_provider.dart';
import 'package:meals/views/components/meal_card.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class MealDetails extends StatefulWidget {
  static const routeName = "/meal-details";
  @override
  _MealDetailsState createState() => _MealDetailsState();
}

class _MealDetailsState extends State<MealDetails> {
  Map<String, String> routeArguments;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("Build(\"Meal_Details\")");
    routeArguments = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(routeArguments['mealTitle']),
      ),
      body: Consumer<MealProvider>(
        builder: (context, mealProvider, child) => ListView(
          children: [
            MealCard(
              meal: mealProvider.getMealById(routeArguments['mealId']),
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
                itemCount: mealProvider
                    .getMealById(routeArguments['mealId'])
                    .ingredients
                    .length,
                itemBuilder: (context, index) => Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      mealProvider
                          .getMealById(routeArguments['mealId'])
                          .ingredients[index],
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
                itemCount: mealProvider
                    .getMealById(routeArguments['mealId'])
                    .steps
                    .length,
                itemBuilder: (context, index) => Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      mealProvider
                          .getMealById(routeArguments['mealId'])
                          .steps[index],
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
      floatingActionButton: FAB(routeArguments: routeArguments),
    );
  }
}

class FAB extends StatefulWidget {
  const FAB({
    Key key,
    @required this.routeArguments,
  }) : super(key: key);

  final Map<String, String> routeArguments;

  @override
  _FABState createState() => _FABState();
}

class _FABState extends State<FAB> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<MealProvider>(
      builder: (context, mealProvider, _) => FloatingActionButton(
        child: Icon(Provider.of<MealProvider>(context, listen: false)
                .isMealFavourite(widget.routeArguments['mealId'])
            ? Icons.star
            : Icons.star_border),
        onPressed: () {
          !Provider.of<MealProvider>(context, listen: false)
                  .isMealFavourite(widget.routeArguments['mealId'])
              ? Provider.of<MealProvider>(context, listen: false)
                  .addMealToFavourite(widget.routeArguments["mealId"])
              : Provider.of<MealProvider>(context, listen: false)
                  .removeMealFromFavourite(widget.routeArguments["mealId"]);
        },
      ),
    );
  }
}

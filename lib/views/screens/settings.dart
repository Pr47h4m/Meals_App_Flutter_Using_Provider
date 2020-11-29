import 'package:flutter/material.dart';
import 'package:meals/provider/meal_provider.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class Settings extends StatefulWidget {
  static const routeName = "/settings";

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool isGlutenFree = false,
      isVegan = false,
      isVegetarian = false,
      isLactoseFree = false;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Map<String, bool> filters =
          Provider.of<MealProvider>(context, listen: false).getFilters();
      setState(() {
        isGlutenFree = filters["isGlutenFree"];
        isVegan = filters["isVegan"];
        isVegetarian = filters["isVegetarian"];
        isLactoseFree = filters["isLactoseFree"];
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        actions: [
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
              Map<String, bool> filters = {
                'isGlutenFree': isGlutenFree,
                'isVegan': isVegan,
                'isVegetarian': isVegetarian,
                'isLactoseFree': isLactoseFree,
              };
              Provider.of<MealProvider>(context, listen: false)
                  .saveFilters(filters);
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          SwitchListTile.adaptive(
            activeColor: Theme.of(context).colorScheme.primary,
            title: Text("Show Gluten Free Meals"),
            subtitle: Text("Meal Which Does Not Contains Gluten"),
            value: isGlutenFree,
            onChanged: (value) => setState(() => isGlutenFree = value),
          ),
          SwitchListTile.adaptive(
            activeColor: Theme.of(context).colorScheme.primary,
            title: Text("Show Vegan Meals"),
            subtitle: Text("Meal Which is Vegan"),
            value: isVegan,
            onChanged: (value) => setState(() => isVegan = value),
          ),
          SwitchListTile.adaptive(
            activeColor: Theme.of(context).colorScheme.primary,
            title: Text("Show Vegetarian Meals"),
            subtitle: Text("Meal Which is Vegetarian"),
            value: isVegetarian,
            onChanged: (value) => setState(() => isVegetarian = value),
          ),
          SwitchListTile.adaptive(
            activeColor: Theme.of(context).colorScheme.primary,
            title: Text("Show Lactose Free Meals"),
            subtitle: Text("Meal Which Does Not Contains Lactose"),
            value: isLactoseFree,
            onChanged: (value) => setState(() => isLactoseFree = value),
          ),
        ],
      ),
    );
  }
}

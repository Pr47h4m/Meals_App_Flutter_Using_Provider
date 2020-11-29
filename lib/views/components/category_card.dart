import 'package:flutter/material.dart';
import 'package:meals/models/category.dart';
import 'package:meals/views/screens/meals.dart';

class CategoryCard extends StatelessWidget {
  final Category category;
  const CategoryCard({Key key, this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("Build(\"Category_Card\")");
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: () {
        Navigator.pushNamed(context, Meals.routeName,
            arguments: {"category": category.id, "title": category.title});
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            colors: [category.color.withOpacity(0.8), category.color],
          ),
        ),
        child: Center(
          child: FittedBox(
            child: Text(
              category.title,
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
        ),
      ),
    );
  }
}

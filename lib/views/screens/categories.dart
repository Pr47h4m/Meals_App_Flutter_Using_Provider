import 'package:flutter/material.dart';
import 'package:meals/provider/category_provider.dart';
import 'package:meals/views/components/category_card.dart';
import 'package:provider/provider.dart';

class Categories extends StatelessWidget {
  const Categories();
  @override
  Widget build(BuildContext context) {
    print("Build(\"Categories\")");
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Consumer<CategoryProvider>(
      builder: (context, categoryProvider, child) => GridView.builder(
        itemCount: categoryProvider.categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(category: categoryProvider.categories[index]);
        },
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: (mediaQueryData.size.width > 800) ? 3 : 2,
          childAspectRatio: (mediaQueryData.size.width > 800)
              ? (mediaQueryData.size.width / 3) / 120
              : (mediaQueryData.size.width / 2) / 160,
        ),
      ),
    );
  }
}

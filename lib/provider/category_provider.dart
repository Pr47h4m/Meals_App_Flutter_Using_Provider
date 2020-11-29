import 'package:flutter/material.dart';
import 'package:meals/models/category.dart' as CategoryModel;

class CategoryProvider with ChangeNotifier {
  List<CategoryModel.Category> categories = [
    CategoryModel.Category(
      id: 'c1',
      title: 'Italian',
      color: Colors.purple,
    ),
    CategoryModel.Category(
      id: 'c2',
      title: 'Quick & Easy',
      color: Colors.red,
    ),
    CategoryModel.Category(
      id: 'c3',
      title: 'Hamburgers',
      color: Colors.orange,
    ),
    CategoryModel.Category(
      id: 'c4',
      title: 'German',
      color: Colors.amber,
    ),
    CategoryModel.Category(
      id: 'c5',
      title: 'Light & Lovely',
      color: Colors.blue,
    ),
    CategoryModel.Category(
      id: 'c6',
      title: 'Exotic',
      color: Colors.green,
    ),
    CategoryModel.Category(
      id: 'c7',
      title: 'Breakfast',
      color: Colors.lightBlue,
    ),
    CategoryModel.Category(
      id: 'c8',
      title: 'Asian',
      color: Colors.lightGreen,
    ),
    CategoryModel.Category(
      id: 'c9',
      title: 'French',
      color: Colors.pink,
    ),
    CategoryModel.Category(
      id: 'c10',
      title: 'Summer',
      color: Colors.teal,
    ),
  ];
}

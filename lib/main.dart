/// @author: [Pratham Jaiswal & Jhanvi Soni]
/// Build Path: [C:\Users\Pratham\Desktop\flutter\meals\build\windows\runner\Release\meals.exe]

import 'package:flutter/material.dart';
import 'package:meals/app_theme.dart';
import 'package:meals/provider/category_provider.dart';
import 'package:meals/provider/meal_provider.dart';
import 'package:meals/views/screens/home.dart';
import 'package:meals/views/screens/meal_details.dart';
import 'package:meals/views/screens/meals.dart';
import 'package:meals/views/screens/page_not_found.dart';
import 'package:meals/views/screens/settings.dart';
import 'package:provider/provider.dart';

void main() => runApp(FlutterGeneral());

// ignore: must_be_immutable
class FlutterGeneral extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CategoryProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => MealProvider(),
        ),
      ],
      child: WillPopScope(
        onWillPop: () async {
          return false;
        },
        child: MaterialApp(
          title: "Meals",
          debugShowCheckedModeBanner: false,
          initialRoute: '/',
          routes: {
            '/': (context) => Home(),
            Meals.routeName: (context) => Meals(),
            MealDetails.routeName: (context) => MealDetails(),
            Settings.routeName: (context) => Settings(),
          },
          onUnknownRoute: (settings) {
            print(settings.name);
            return MaterialPageRoute(builder: (_) => PageNotFound());
          },
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: ThemeMode.system,
        ),
      ),
    );
  }
}

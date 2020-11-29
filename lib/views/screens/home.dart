import 'package:flutter/material.dart';
import 'package:meals/provider/category_provider.dart';
import 'package:meals/views/components/app_drawer.dart';
import 'package:meals/views/screens/categories.dart';
import 'package:meals/views/screens/favourites.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("Build(\"Home\")");
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    bool isWideScreen = mediaQueryData.size.width > 800;
    return Row(
      children: [
        if (isWideScreen) AppDrawer(),
        Expanded(
          child: DefaultTabController(
            length: 2,
            child: Scaffold(
              appBar: AppBar(
                title: Text("Meals"),
                elevation: 0,
                bottom: TabBar(
                  tabs: [
                    Tab(
                      icon: Icon(Icons.set_meal),
                      text: "Meals",
                    ),
                    Tab(
                      icon: Icon(Icons.star),
                      text: "Favourites",
                    ),
                  ],
                ),
                automaticallyImplyLeading: (isWideScreen) ? false : true,
              ),
              drawer: (!isWideScreen) ? AppDrawer() : null,
              body: TabBarView(
                children: [const Categories(), Favourites()],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

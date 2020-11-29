import 'package:flutter/material.dart';
import 'package:meals/views/screens/settings.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Theme.of(context).colorScheme.onSurface,
        child: ListView(
          children: [
            DrawerHeader(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Meals",
                    style: Theme.of(context).textTheme.headline4,
                  )
                ],
              ),
            ),
            ListTile(
              title: Text(
                "SETTINGS",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              onTap: () {
                Navigator.pushNamed(context, Settings.routeName);
              },
            ),
            ListTile(
              title: Text(
                "PRATHAM JAISWAL",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              subtitle: Text(
                "Developer",
                style: Theme.of(context).textTheme.bodyText2,
              ),
            )
          ],
        ),
      ),
    );
  }
}

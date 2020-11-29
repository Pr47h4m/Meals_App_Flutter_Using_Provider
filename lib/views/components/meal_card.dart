import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';

class MealCard extends StatelessWidget {
  final Meal meal;
  const MealCard({Key key, this.meal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("Build(\"Meal_Card\")");
    return Card(
      margin: const EdgeInsets.all(8.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                child: CachedNetworkImage(
                  placeholder: (context, url) => const Center(
                    child: SizedBox(
                      height: 40,
                      width: 40,
                      child: CircularProgressIndicator(),
                    ),
                  ),
                  imageUrl: meal.imageUrl,
                  width: double.infinity,
                  height: 180,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 20,
                right: 0,
                child: Container(
                  color:
                      Theme.of(context).colorScheme.onSurface.withOpacity(0.6),
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    meal.title,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      const Icon(
                        Icons.timer,
                        color: Colors.black,
                      ),
                      Text("${meal.duration}"),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      const Icon(
                        Icons.work,
                        color: Colors.black,
                      ),
                      Text("${meal.getComplexity}"),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      const Icon(
                        Icons.attach_money,
                        color: Colors.black,
                      ),
                      Text("${meal.getAffordability}"),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

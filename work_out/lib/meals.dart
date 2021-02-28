import 'package:flutter/material.dart';

Widget meals(BuildContext context) {
  return ListView(
      padding: const EdgeInsets.all(32),
      scrollDirection: Axis.vertical,
      children: <Widget>[
        mealGroup(),
        SizedBox(
          height: 32,
        ),
        mealGroup(),
        SizedBox(
          height: 32,
        ),
        mealGroup(),
        SizedBox(
          height: 32,
        ),
        mealGroup(),
        SizedBox(
          height: 64,
        ),
      ]);
}

Widget mealGroup() => SizedBox(
      width: double.infinity,
      height: 200,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        onPressed: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Breakfast"),
            meal(<String>["Banana", "Cereal", "Tropicana"], "15:00"),
            meal(<String>["Banana", "Cereal", "Tropicana"], "15:00"),
            meal(<String>["Banana", "Cereal", "Tropicana"], "15:00"),
          ],
        ),
      ),
    );

Widget meal(List<String> foods, String time) => ListTile(
      minLeadingWidth: 0,
      dense: true,
      leading: Icon(
        Icons.circle,
        size: 8,
      ),
      title: Text(foods.toString()),
      trailing: Text(
        time,
      ),
    );

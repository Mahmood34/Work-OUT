import 'package:flutter/material.dart';

Widget timeline(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 16),
    child: DefaultTabController(
      length: 10,
      child: Scaffold(
        appBar: TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            isScrollable: true,
            tabs: List<Widget>.generate(10, (int index) {
              return Container(
                width: 32,
                child: new Tab(
                  child: Text(
                    index.toString(),
                    textScaleFactor: 1.2,
                  ),
                ),
              );
            })),
        body: TabBarView(
            children: List<Widget>.generate(10, (int index) {
          return new Column(
            children: [dayCard(index)],
          );
        })),
      ),
    ),
  );
}

Widget dayCard(int index) => Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    margin: const EdgeInsets.all(32),
    child: Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 16, left: 16, right: 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(index.toString()),
              TextButton.icon(
                icon: Icon(
                  Icons.edit,
                  size: 16,
                ),
                label: Text("edit"),
                onPressed: () {},
              ),
            ],
          ),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("Push"), Text("05:00")],
              ),
            ),
          ),
          meal("Breakfast", <String>["Banana", "Cereal", "Tropicana"], "15:00"),
          meal("Lunch", <String>["Sandwich", "Diet Coke", "Walkers Crisps"],
              "15:00"),
          meal("Dinner", <String>["Spaghetti", "Water"], "15:00"),
          SizedBox(
            width: double.infinity,
            height: 72,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              onPressed: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("Burst"), Text("18:45")],
                  ),
                  Text(
                    "INCOMPLETE",
                    style: TextStyle(fontSize: 18, letterSpacing: 5),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ));

Widget meal(String meal, List<String> foods, String time) => ListTile(
      minLeadingWidth: 0,
      dense: true,
      leading: Icon(
        Icons.circle,
        size: 12,
      ),
      title: Text(meal),
      subtitle: Text(
        foods.toString(),
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Text(
        time,
      ),
    );

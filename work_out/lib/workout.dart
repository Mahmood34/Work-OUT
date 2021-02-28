import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

Widget workout(BuildContext context) {
  return ListView(
      padding: const EdgeInsets.all(32),
      scrollDirection: Axis.vertical,
      children: <Widget>[
        Text(
          "Muscle Groups",
          style: TextStyle(fontSize: 18),
        ),
        GridView.count(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            crossAxisCount: 3,
            childAspectRatio: 1.0,
            padding: const EdgeInsets.all(24),
            mainAxisSpacing: 24,
            crossAxisSpacing: 24,
            children: <Widget>[
              muscleGroup(),
              muscleGroup(),
              muscleGroup(),
              muscleGroup(),
              muscleGroup(),
              muscleGroup(),
              muscleGroup(),
              muscleGroup(),
              muscleGroup(),
            ]),
        Text(
          "Your Splits",
          style: TextStyle(fontSize: 18),
        ),
        Container(
          height: 100,
          child: OverflowBox(
            maxWidth: 400,
            child: ListView(
              clipBehavior: Clip.none,
              padding: EdgeInsets.all(16),
              scrollDirection: Axis.horizontal,
              children: [
                split(),
                split(),
                split(),
                split(),
                split(),
                split(),
                split(),
                split(),
                split(),
                split(),
                split(),
              ],
            ),
          ),
        ),
        ListTile(
          title: Text("Back"),
        ),
        ListTile(
          title: Text("Back"),
        ),
        ListTile(
          title: Text("Back"),
        ),
        ListTile(
          title: Text("Back"),
        ),
        ListTile(
          title: Text("Back"),
        ),
      ]);
}

Widget muscleGroup() => MaterialButton(
      onPressed: () {},
      color: Colors.blue,
      textColor: Colors.white,
      // child: Icon(
      //   Icons.bolt,
      //   size: 24,
      // ),
      padding: EdgeInsets.all(16),
      shape: CircleBorder(),
    );

Widget split() => MaterialButton(
      onPressed: () {},
      color: Colors.blue,
      textColor: Colors.white,
      // child: Icon(
      //   Icons.bolt,
      //   size: 24,
      // ),
      padding: EdgeInsets.all(16),
      shape: CircleBorder(),
    );

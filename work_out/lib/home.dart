import 'package:flutter/material.dart';

Widget home(BuildContext context) {
  return ListView(
    padding: const EdgeInsets.all(32),
    children: [
      Text("Hi Mohammed"),
      Text.rich(
        TextSpan(
          text: "Here's your day",
          style: TextStyle(fontWeight: FontWeight.w400),
        ),
        style: TextStyle(fontSize: 32),
      ),
      SizedBox(
        height: 32,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Schedule"),
          IconButton(
            icon: Icon(Icons.more_vert),
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
      Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("Breakfast"), Text("06:00")],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("Lunch"), Text("12:00")],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("Dinner"), Text("18:00")],
            ),
          ],
        ),
      ),
      SizedBox(
        width: double.infinity,
        height: 50,
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          onPressed: () {},
          child: Text("Burst"),
        ),
      ),
      SizedBox(
        height: 32,
      ),
      Text("Recent Medals"),
      Container(
        height: 100,
        child: OverflowBox(
          maxWidth: 400,
          child: ListView(
            clipBehavior: Clip.none,
            padding: EdgeInsets.all(16),
            scrollDirection: Axis.horizontal,
            children: [
              badge(),
              badge(),
              badge(),
              badge(),
              badge(),
              badge(),
              badge(),
              badge(),
              badge(),
              badge(),
              badge(),
            ],
          ),
        ),
      )
    ],
  );
}

Widget badge() => MaterialButton(
      onPressed: () {},
      color: Colors.blue,
      textColor: Colors.white,
      // child: Icon(
      //   Icons.camera_alt,
      //   size: 24,
      // ),
      padding: EdgeInsets.all(16),
      shape: CircleBorder(),
    );

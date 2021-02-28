import 'package:flutter/material.dart';

class Burst extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "Burst",
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text("Burst"),
          centerTitle: true,
        ),
      ),
    );
  }
}

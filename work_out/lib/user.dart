import 'package:flutter/material.dart';

class User extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('User'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
            child: Hero(
                tag: "User",
                child: Icon(
                  Icons.account_circle_outlined,
                  size: 64,
                ))),
      ),
    );
  }
}

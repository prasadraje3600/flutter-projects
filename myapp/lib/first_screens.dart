import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.amberAccent,
      child: Center(
        child: Text(
          "WELCOME",
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.red, fontSize: 40.0),
        ),
      ),
    );
  }
}

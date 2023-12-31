import 'package:flutter/material.dart';
import 'first_screens.dart';
import 'materialappwidget.dart';
import 'home.dart';

void main() => runApp(new MyFlutterApp());

class MyFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "My Flutter App",
        home: Scaffold(
            appBar: AppBar(
              title: Text("My First App Screen"),
            ),
            body: FirstScreen()));
  }
}

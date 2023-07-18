import 'package:flutter/material.dart';
import 'package:shopingapp/currency_converter_app.dart';
// import "package:flutter/cupertino.dart";

void main() {
  runApp(const MyApp());
  
}

//  Types of widgets
// 1. Statelesswidgets
// 2. Statefullwidgets
// 3.Inheritedewidgets

//   State
//  Material design
// cupertino design

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:CurrencyConverterMaterialPage(),
        );
  
  }
}

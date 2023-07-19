// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// import 'package:flutter/widgets.dart';
// double result = 0;

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});
  // print("constructor");
  @override
  State<CurrencyConverterMaterialPage> createState() =>
      _CurrencyConverterMaterialPageState();
}

// _CurrencyConverterMaterialPageState();
class _CurrencyConverterMaterialPageState
    extends State<CurrencyConverterMaterialPage> {
  double result = 0;

  final TextEditingController textEditingController = TextEditingController();
  // @override
  // void initState() {
  //   super.initState();
  //   print('rebuilt');
  // }

  @override
  Widget build(BuildContext context) {
    // print("build fn");
    // double result = 0;
    // final TextEditingController textEditingController = TextEditingController();
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
          color: Colors.red, width: 5.0, style: BorderStyle.solid),
      // strokeAlign: BorderSide.strokeAlignOutside,
      borderRadius: BorderRadius.circular(20),
    );
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        elevation: 0,
        title: const Text("Currency Converter"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // int => string integervalue.toStirng()
            //  string  => int int.parse(stringvalue)
            Text(
              "INR ${result != 0 ? result.toStringAsFixed(3) : result.toStringAsFixed(0)}",
              style: const TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              // margin: const EdgeInsets.all(10.0),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  hintText: "PLEASE ENTER THE AMOUNT IN USD",
                  hintStyle: const TextStyle(
                    color: Colors.black,
                  ),
                  suffixIcon: const Icon(Icons.monetization_on_rounded),
                  suffixIconColor: Colors.red,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),
            // button
            // raised
            // appears like a text
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  result = double.parse(textEditingController.text) * 81;
                  setState(() {});
                  // build(context);
                },
                style: ElevatedButton.styleFrom(
                  // elevation: MaterialStatePropertyAll(50),
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: const Text("CONVERT"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

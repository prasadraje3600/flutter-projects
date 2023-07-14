import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            padding: EdgeInsets.only(left: 5.0, top: 40.0),
            alignment: Alignment.topCenter,
            color: Color.fromARGB(255, 182, 208, 231),
            child: Row(
              children: <Widget>[
                Expanded(
                    child: Text(
                  " AIR INDIA",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 30.0,
                      fontFamily: "Schyler",
                      fontWeight: FontWeight.w700,
                      color: Colors.red),
                )),
                Expanded(
                    child: Text(
                  "FROM MUMBAI TO HYDRABAD VIA NEW DELHI ",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 15.0,
                      fontFamily: "Schyler",
                      fontWeight: FontWeight.w700,
                      color: Colors.red),
                )),
                Expanded(
                    child: Text(
                  "FROM MUMBAI TO DELHI",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 15.0,
                      fontFamily: "Schyler",
                      fontWeight: FontWeight.w700,
                      color: Colors.red),
                )),
                Expanded(
                    child: Text(
                  "FROM MUMBAI TO DENMARK",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 15.0,
                      fontFamily: "Schyler",
                      fontWeight: FontWeight.w700,
                      color: Colors.red),
                )),
              ],
            )));
  }
}

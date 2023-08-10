import 'package:chat/main.dart';
import 'package:chat/screens/auth/login_screen.dart';
// import 'package:chat/screens/home_screen.dart';
// import 'package:chat/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(microseconds: 2), () {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
      SystemChrome.setSystemUIOverlayStyle(
          SystemUiOverlayStyle(statusBarColor: Colors.transparent));
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => const LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      // App Bar
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 224, 10, 10),
        title: Text("WelCome To We Chat"),
      ),
      body: Stack(children: [
        Positioned(
            top: mq.height * .15,
            right: mq.height * .15,
            width: mq.width * .4,
            // duration: const Duration(seconds: 1),
            child: Image.asset(
              "images/chat-box.png",
            )),
        Positioned(
            bottom: mq.height * .10,
            // left: mq.width * .05,
            width: mq.width,
            // height: mq.height * .05,
            child: Text(
              "MADE IN INDIA WITH ❤️",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                letterSpacing: .6,
              ),
            )),
      ]),
    );
    //  floting button to add new user
  }
}

import 'dart:developer';
import 'dart:io';

import 'package:chat/helper/dialogs.dart';
import 'package:chat/main.dart';
import 'package:chat/screens/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isAnimate = false;
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(microseconds: 500), () {
      setState(() {
        _isAnimate = true;
      });
    });
  }

  _handleGoogleBtnClick() {
    _signInWithGoogle().then((user) {
      if (user != null) {
        log('\User:${user.user}');
        log('\UserAdditionalInfo: ${user.additionalUserInfo}');

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => const HomeScreen()),
        );
      }
    });
  }

  Future<UserCredential?> _signInWithGoogle() async {
    try {
      await InternetAddress.lookup('google.com');
      // Trigger the authentication flow
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      // Obtain the auth details from the request
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      // Once signed in, return the UserCredential
      return await FirebaseAuth.instance.signInWithCredential(credential);
    } catch (e) {
      log('\n_signInWithGoogle: $e');
      Dialogs.showSnackbar(context, "Something went to wrong(check Internet!)");
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    //  mq = MediaQuery.of(context).size;
    return Scaffold(
      // App Bar
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 224, 10, 10),
        title: Text("WelCome To We Chat"),
      ),
      body: Stack(
        children: [
          AnimatedPositioned(
              top: mq.height * .15,
              right: _isAnimate ? mq.height * .15 : -mq.width * .6,
              width: mq.width * .4,
              duration: const Duration(seconds: 1),
              child: Image.asset(
                "images/chat-box.png",
              )),
          Positioned(
              bottom: mq.height * .09,
              left: mq.width * .05,
              width: mq.width * .9,
              height: mq.height * .05,
              child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: StadiumBorder(),
                      elevation: 1),
                  onPressed: () {
                    _handleGoogleBtnClick();
                  },
                  icon:
                      Image.asset("images/google.png", height: mq.height * .03),
                  label: Text("Sign with Goggle"))),
        ],
      ),
      //  floting button to add new user
    );
  }
}

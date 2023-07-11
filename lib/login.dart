// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, non_constant_identifier_names, unnecessary_null_comparison, use_build_context_synchronously, avoid_print, unused_import, unused_local_variable, avoid_web_libraries_in_flutter

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class Loginform extends StatefulWidget {
  const Loginform({super.key});

  @override
  State<Loginform> createState() => _LoginformState();
}

class _LoginformState extends State<Loginform> {
  void RequesPermission() async {
    FirebaseMessaging messaging = FirebaseMessaging.instance;
    NotificationSettings settings = await messaging.requestPermission(
      alert: true,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      sound: true,
      announcement: false,
      provisional: false,
    );
    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      print("Okkkk");
    }
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print(
          'Title:${message.notification?.title} / Body:${message.notification?.body}  ');
    });
  }

  @override
  void initState() {
    super.initState();
    RequesPermission();
  }

  final auth = FirebaseAuth.instance;
  var showpass = true;
  late String email, password;
  late String name;
  bool showSpinner = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blueGrey,
        title: const Text(
          "Login",
          style: TextStyle(color: Colors.white, fontSize: 33),
        ),
        centerTitle: true,
      ),
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 9),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(66)),
                    width: 266,
                    child: TextField(
                        onChanged: (value) {
                          email = value;
                        },
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Email : ",
                          hintStyle: TextStyle(fontSize: 19),
                          prefixIcon: Icon(Icons.person),
                        ))),
                Container(
                    margin: const EdgeInsets.symmetric(vertical: 27),
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 9),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(66)),
                    width: 266,
                    child: TextField(
                        onChanged: (value) {
                          password = value;
                        },
                        keyboardType: TextInputType.emailAddress,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Password :  ",
                          hintStyle: TextStyle(fontSize: 19),
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: Icon(Icons.visibility),
                        ))),
                ElevatedButton(
                  onPressed: () async {
                    setState(() {
                      showSpinner = true;
                    });
                    try {
                      var User = await auth.signInWithEmailAndPassword(
                          email: email, password: password);

                      if (User != null) {
                        Navigator.pushNamed(context, '/nine');
                      }
                      setState(() {
                        showSpinner = false;
                      });
                    } catch (e) {
                      print(e);
                    }
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                            horizontal: 99, vertical: 15)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(66))),
                  ),
                  child: const Text(
                    "Log in",
                    style: TextStyle(fontSize: 27),
                  ),
                ),
                const SizedBox(height: 30),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/four');
                    },
                    child: const Text(
                      "Forget Password?",
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    )),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  const Text(
                    "Do not have an account?",
                    style: TextStyle(color: Colors.black, fontSize: 22),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/Third');
                      },
                      child: const Text(
                        "signup",
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ))
                ]),
              ],
            )),
      ),
    );
  }
}

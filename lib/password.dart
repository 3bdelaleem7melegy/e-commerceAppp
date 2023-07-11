// ignore_for_file: unused_import, prefer_const_constructors, unused_local_variable, non_constant_identifier_names, use_build_context_synchronously, avoid_print

import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class Ressetpassword extends StatefulWidget {
  const Ressetpassword({super.key});

  @override
  State<Ressetpassword> createState() => _RessetpasswordState();
}

class _RessetpasswordState extends State<Ressetpassword> {
  final auth = FirebaseAuth.instance;
  var showpass = true;
  late String email;
  bool showSpinner = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text(
          "Reset Password",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Enter your email to reset password",
              style: TextStyle(color: Colors.white, fontSize: 21),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 9),
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
                      hintText: "Enter your Email : ",
                      prefixIcon: Icon(Icons.email),
                      hintStyle: TextStyle(fontSize: 19),
                    ))),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () async {
                setState(() {
                  showSpinner = true;
                });
                try {
                  var User = await auth.sendPasswordResetEmail(email: email);
                  Navigator.pushNamed(context, '/');
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
                    const EdgeInsets.symmetric(horizontal: 99, vertical: 15)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(66))),
              ),
              child: const Text(
                "Reset Password",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

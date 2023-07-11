// ignore: file_names
// ignore: file_names
// ignore: file_names
// ignore_for_file: use_key_in_widget_constructors, camel_case_types, sized_box_for_whitespace, prefer_const_constructors, unused_local_variable, non_constant_identifier_names, avoid_print, use_build_context_synchronously, unused_import, prefer_typing_uninitialized_variables, file_names, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final auth = FirebaseAuth.instance;
  var showpass = true;
  late String email, password;
  late String name;
  var phone;
  bool showSpinner = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text(
          "Sign up",
          style: TextStyle(color: Colors.white, fontSize: 30),
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
              Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 9),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(66)),
                  width: 266,
                  child: TextField(
                      onChanged: (value) {
                        name = value;
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "UserName : ",
                        hintStyle: TextStyle(fontSize: 19),
                        prefixIcon: Icon(Icons.person),
                      ))),
              const SizedBox(
                height: 10,
              ),
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
                        hintText: "Enter your Email : ",
                        hintStyle: TextStyle(fontSize: 19),
                        prefixIcon: Icon(Icons.email),
                      ))),
              const SizedBox(
                height: 10,
              ),
              Container(
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
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Password : ",
                        hintStyle: TextStyle(fontSize: 19),
                        prefixIcon: Icon(Icons.lock),
                        suffix: Icon(Icons.visibility),
                      ))),
              const SizedBox(
                height: 10,
              ),
              // Container(
              //     padding:
              //         const EdgeInsets.symmetric(vertical: 5, horizontal: 9),
              //     decoration: BoxDecoration(
              //         color: Colors.purple[100],
              //         borderRadius: BorderRadius.circular(66)),
              //     width: 266,
              //     child: TextField(
              //         onChanged: (value) {
              //           phone = value;
              //         },
              //         decoration: InputDecoration(
              //           border: InputBorder.none,
              //           hintText: "phone : ",
              //           hintStyle: TextStyle(fontSize: 20),
              //           prefixIcon: Icon(Icons.call),
              //         ))),
              // const SizedBox(
              //   height: 10,
              // ),
              ElevatedButton(
                onPressed: () async {
                  setState(() {
                    showSpinner = true;
                  });

                  try {
                    var User = await auth.createUserWithEmailAndPassword(
                        email: email, password: password);
                    print(User.user!.uid);
                    FirebaseFirestore.instance
                        .collection('users')
                        .doc(User.user!.uid)
                        .set({
                      'username': name,
                      'email': email,
                      'password': password,
                      // 'phone': phone,
                    });

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
                  "Register",
                  style: TextStyle(fontSize: 27),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Do  have an account?",
                    style: TextStyle(color: Colors.black, fontSize: 22),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/');
                      },
                      child: const Text("login",
                          style: TextStyle(color: Colors.white, fontSize: 22)))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

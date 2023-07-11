// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors, prefer_typing_uninitialized_variables

import 'package:e_commerce/FirstPage.dart';
import 'package:e_commerce/MapElctronic.dart';
import 'package:e_commerce/HomeCars.dart';
import 'package:e_commerce/MapCar.dart';
import 'package:e_commerce/HomeWears.dart';
import 'package:e_commerce/Signup.dart';
import 'package:e_commerce/Profile.dart';
import 'package:e_commerce/HomEelectoronic.dart';
import 'package:e_commerce/login.dart';
import 'package:e_commerce/password.dart';
import 'package:e_commerce/payment.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  if (kDebugMode) {
    print(message.messageId);
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
  runApp(App());
}

class DefaultFirebaseOptions {
  static var currentPlatform;
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        color: Colors.green[100],
        debugShowCheckedModeBanner: false,
        title: 'Electrical Store',
        initialRoute: '/',
        routes: {
          '/': (context) => Loginform(),
          '/first': (context) => HomEelectoronic(),
          '/Third': (context) => Signup(),
          '/four': (context) => Ressetpassword(),
          '/five': (context) => About(),
          '/seven': (context) => HomeCars(),
          '/eight': (context) => HomeWears(),
          '/nine': (context) => FirstPage(),
          '/ten': (context) => Payment(),
          '/eleven': (context) => GoogleMapCar(),
          '/twelve': (context) => Googleelctronic(),
        });
    // Arabic RTL
  }
}

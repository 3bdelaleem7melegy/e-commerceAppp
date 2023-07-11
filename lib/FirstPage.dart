// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names, avoid_unnecessary_containers

import 'package:e_commerce/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: Colors.blueGrey,
              title: Text("lemoo"),
              centerTitle: true,
            ),
      drawer: Drawer(
          backgroundColor: Colors.blueGrey,
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/logo.png"),
                  ),
                ),
                accountEmail: null,
                accountName: null,
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                title: Text("Address: Station Street 5"),
              ),
              ListTile(
                title: Text("City: Cairo"),
              ),
              ListTile(
                title: Text("Country: Egypt"),
              ),
              ListTile(
                title: Text("Email: Abdualaleemlimo@gmail.com"),
              ),
              ListTile(
                title: Text("Phone: 01068037451"),
              ),
              ListTile(
                title: Text("Website:  limo@website.com"),
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              ListTile(
                title: Text(
                  "Goals",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: SvgPicture.asset("images/check.svg"),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text("Planning State")
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: SvgPicture.asset("images/check.svg"),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text("Development")
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: SvgPicture.asset("images/check.svg"),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text("Execution Phase")
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: SvgPicture.asset("images/check.svg"),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text("New way of living"),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.only(left: 70),
                child: Row(
                  children: [
                    Container(
                      child: SvgPicture.asset("images/linkedin.svg"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: SvgPicture.asset("images/github.svg"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: SvgPicture.asset("images/twitter.svg"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: SvgPicture.asset("images/dribble.svg"),
                    ),
                  ],
                ),
              ),
            ],
          )),
      body: Column(
        children: [
          // Padding(padding: EdgeInsets.only(top: 90)),
          // if (Responsive.isDesktop(context))
          Stack(
            children: [
              Image.asset(
                "images/background.jpg",
                width: 1000,
              ),
              Text(
                "Build a great Future for all of us!",
                style: TextStyle(fontSize: 50, color: Colors.white),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 50, horizontal: 50),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/seven');
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black),
                padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(horizontal: 99, vertical: 15)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(66))),
              ),
              child: const Text(
                "Start >",
                style: TextStyle(fontSize: 20),
              ),
            ),
          )
        ],
      ),
    );
  }
}

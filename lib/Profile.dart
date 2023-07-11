// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names

import 'package:e_commerce/responsive.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Responsive.isDesktop(context)
            ? null
            : AppBar(
                backgroundColor: Colors.blueGrey,
                title: Text(
                  "About",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                centerTitle: true,
              ),
        drawer: Drawer(
          child: Column(
            children: [
              AppBar(
                title: Text(
                  "List",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                backgroundColor: Colors.blueGrey,
                centerTitle: true,
              ),
              // UserAccountsDrawerHeader(
              //     decoration: BoxDecoration(
              //       image: DecorationImage(
              //           image:
              //               AssetImage("assets/img/IMG_20220915_190800_700.jpg"),
              //           fit: BoxFit.cover),
              //     ),
              //     accountName: Text(
              //       "Abdelaleem melegy",
              //       style: TextStyle(fontSize: 22),
              //     ),
              //     accountEmail: Text("Abdelaleemmelegy@gmail.com"),
              //     currentAccountPicture: CircleAvatar(
              //       radius: 33,
              //       backgroundImage:
              //           AssetImage("assets/img/IMG_20230216_035602_989.jpg"),
              //     )),
              Padding(padding: EdgeInsets.only(top: 70)),
              ListTile(
                  title: Text(
                    "Shop Electronics",
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  ),
                  leading: Icon(
                    Icons.add_shopping_cart,
                    size: 30,
                    color: Colors.blueGrey,
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/first');
                  }),
              SizedBox(
                height: 10,
              ),
              ListTile(
                  title: Text(
                    "Shop Cars",
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  ),
                  leading: Icon(
                    Icons.add_shopping_cart,
                    size: 30,
                    color: Colors.blueGrey,
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/seven');
                  }),
              SizedBox(
                height: 10,
              ),
              ListTile(
                  title: Text(
                    "Shop Wears",
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  ),
                  leading: Icon(
                    Icons.help_center,
                    size: 30,
                    color: Colors.blueGrey,
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/eight');
                  }),
              SizedBox(
                height: 10,
              ),
              ListTile(
                  title: Text(
                    "Logout",
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  ),
                  leading: Icon(
                    Icons.exit_to_app,
                    color: Colors.blueGrey,
                    size: 30,
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/nine');
                  }),
              Container(
                margin: EdgeInsets.only(top: 320),
                child: Text("Developed by: 3bdelAleemmelegy © 2023",
                    style: TextStyle(fontSize: 22, color: Colors.white)),
              )
            ],
          ),
        ),
        body: Column(
          children: [
            if (Responsive.isDesktop(context))
              Padding(
                padding: EdgeInsets.only(top: 40),
              ),
            UserAccountsDrawerHeader(
              accountEmail: null,
              accountName: null,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("images/IMG_20230216_035602_989.png"),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              title: Text(
                " Abdelaleem melegy",
                style: TextStyle(color: Colors.black, fontSize: 24),
              ),
              leading: Icon(
                Icons.person,
                size: 40,
                color: Colors.blueGrey,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            ListTile(
              title: Text(
                "Abdualaleemlimo@gmail.com",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              leading: Icon(
                Icons.email,
                size: 30,
                color: Colors.blueGrey,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            ListTile(
              title: Text(
                " 01068037451",
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
              leading: Icon(
                Icons.phone,
                size: 30,
                color: Colors.blueGrey,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            ListTile(
              title: Text(
                " Male",
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
              leading: Icon(
                Icons.male,
                size: 30,
                color: Colors.blueGrey,
              ),
            ),
          ],
        ));
  }
}

// ignore_for_file: file_names, prefer_const_constructors, sort_child_properties_last, unused_import, unused_local_variable

import 'package:e_commerce/DetailsCars.dart';
import 'package:e_commerce/DetailsWears.dart';
import 'package:e_commerce/item.dart';
import 'package:e_commerce/productelectoronic.dart';
import 'package:e_commerce/productt.dart';
import 'package:e_commerce/responsive.dart';
import 'package:e_commerce/screen/Detailsscreenelectoronic.dart';
import 'package:flutter/material.dart';

class HomeWears extends StatelessWidget {
  const HomeWears({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: Colors.blueGrey,
              title: const Text(
                "Shop Wears",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              centerTitle: true,
              // actions: [
              //   Row(
              //     children: [
              //       IconButton(
              //         color: Colors.black,
              //         onPressed: () {},
              //         icon: Icon(Icons.add_shopping_cart),
              //       ),
              //       Padding(
              //         padding: EdgeInsets.only(right: 10),
              //         child: Text(
              //           "\$",
              //           style: TextStyle(
              //             fontSize: 25,
              //             color: Colors.black,
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ],
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
            // ListTile(
            //     title: Text(
            //       "Home",
            //       style: TextStyle(color: Colors.purple, fontSize: 25),
            //     ),
            //     leading: Icon(
            //       Icons.home,
            //       size: 30,
            //       color: Colors.purple,
            //     ),
            //     onTap: () {
            //       Navigator.pushNamed(context, '/forty');
            //     }),

            ListTile(
                title: Text(
                  "Shop Electronics",
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
                leading: Icon(
                  Icons.phone_android,
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
                  Icons.car_crash,
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
                  "About",
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
                leading: Icon(
                  Icons.help_center,
                  size: 30,
                  color: Colors.blueGrey,
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/five');
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
                  Navigator.pushNamed(context, '/');
                }),

            Container(
              margin: EdgeInsets.only(top: 330),
              child: Text("Developed by: 3bdelAleemmelegy ©2023",
                  style: TextStyle(fontSize: 22, color: Colors.black)),
            )
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                // childAspectRatio: 1 / 1,
                crossAxisSpacing: 50,
                mainAxisSpacing: 20),
            itemCount: products.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Deyailss(
                          productss: productss[index],
                        ),
                      ));
                },
                child: GridTile(
                  child: Image.asset(
                    productss[index].image,
                  ),
                  footer: GridTileBar(
                      // trailing: IconButton(
                      //   icon: Icon(
                      //     Icons.add,
                      //   ),
                      //   onPressed: () {},
                      //   color: Colors.black,
                      // ),
                      // leading: Text(
                      //   "For More Details,Click on the post",
                      //   style: TextStyle(fontSize: 20),
                      // ),
                      ),
                ),
              );
            }),
      ),
    );
  }
}

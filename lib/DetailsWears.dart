// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable, file_names

import 'package:e_commerce/productt.dart';
import 'package:e_commerce/responsive.dart';
import 'package:flutter/material.dart';

class Deyailss extends StatefulWidget {
  Productt productss;
  Deyailss({required this.productss});

  @override
  State<Deyailss> createState() => _DeyailssState();
}

class _DeyailssState extends State<Deyailss> {
  bool isshowmore = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: Colors.blueGrey,
              title: const Text(
                "Details",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              centerTitle: true,
            ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(widget.productss.image),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              child: Text(
                "Title :${widget.productss.title}",
                style: TextStyle(fontSize: 25),
                textAlign: TextAlign.start,
                maxLines: isshowmore ? 2 : null,
                overflow: TextOverflow.fade,
              ),
            ),
            Text(
              "Price: ${widget.productss.price} \$",
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Rate this post:",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.edit_location,
                      size: 22,
                      color: Colors.white,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/twelve');
                        },
                        child: Text(
                          widget.productss.location,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ))
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.infinity,
              child: Text(
                "Details :${widget.productss.description}",
                style: TextStyle(fontSize: 25),
                textAlign: TextAlign.start,
                maxLines: isshowmore ? 2 : null,
                overflow: TextOverflow.fade,
              ),
            ),
            TextButton(
                onPressed: () {
                  setState(() {
                    isshowmore = !isshowmore;
                  });
                },
                child: Text(
                  isshowmore ? "Show More" : "Show Less",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                )),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/ten');
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black),
                padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(horizontal: 99, vertical: 15)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(66))),
              ),
              child: const Text(
                "payment",
                style: TextStyle(fontSize: 27, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

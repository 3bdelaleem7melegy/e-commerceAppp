// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable, file_names

import 'package:e_commerce/item.dart';
import 'package:e_commerce/responsive.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  Item productts;
  Details({required this.productts});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
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
            Image.asset(widget.productts.imgg),
            SizedBox(
              height: 10,
            ),
            Text(
              "Price: ${widget.productts.price} \$",
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
                          Navigator.pushNamed(context, '/eleven');
                        },
                        child: Text(
                          widget.productts.location,
                          style: TextStyle(color: Colors.white),
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
                "Details :${widget.productts.Text}",
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
          ],
        ),
      ),
    );
  }
}

// ignore_for_file: unused_import, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class Product {
  final int id, price;
  final String title, description, image;
  var location;

  Product({
    required this.price,
    required this.title,
    required this.description,
    required this.image,
    required this.id,
    this.location = "moll masr",
  });
}

List<Product> products = [
  Product(
    price: 700,
    title: "Airpods",
    description: "high quality",
    image: "images/airpod.png",
    id: 1,
    location: "moll masr",
  ),
  Product(
    price: 5000,
    title: "Camera",
    description: "high quality",
    image: "images/camera.png",
    id: 2,
  ),
  Product(
    price: 300,
    title: "Glasses",
    description: "high copy",
    image: "images/class.png",
    id: 3,
  ),
  Product(
    price: 5000,
    title: "Head phone",
    description: "high quality , gray",
    image: "images/headset.png",
    id: 4,
  ),
  Product(
    price: 8000,
    title: "Mobile",
    description: "C55,8Ram,128",
    image: "images/mobile.png",
    id: 5,
  ),
  Product(
    price: 500,
    title: "Speaker",
    description: "high quality",
    image: "images/speaker.png",
    id: 6,
  ),
];

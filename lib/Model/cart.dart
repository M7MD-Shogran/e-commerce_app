import 'dart:ffi';

import 'package:flutter/material.dart';

class Cart {
  final int id, quantity ,size;
  final String name, tag, description, assetsImage;
  final double price, rating;
  // final List<String> assetsImage;
  final List<Color> color;
  // final List<int> size;
  final bool isFavourite, isPopular;
  Cart({
    this.id,
    this.name,
    this.description,
    this.assetsImage,
    this.color,
    this.tag,
    this.quantity,
    this.size,
    this.rating,
    this.price,
    this.isFavourite,
    this.isPopular,
  });
}

List<Cart> cartList = [];

// ignore: missing_return
Void addToList(
  int id,
  String name,
  String description,
  String assetsImage,
  String color,
  String tag,
  int quantity,
  int size,
  double rating,
  double price,
) {
  Cart(
    id: id,
    name: name,
    description: description,
    // assetsImage: assetsImage,
    // color: color,
    quantity: quantity,
  );
}

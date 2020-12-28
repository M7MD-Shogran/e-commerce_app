import 'package:flutter/material.dart';

class Prodects {
  final int id;
  final String name, description, tag;
  final double price, rating;
  final List<String> assetsImage;
  final List<int> size;
  final List<Color> color;
  final bool isFavourite, isPopular;

  Prodects({
    this.id,
    this.name,
    this.description,
    this.assetsImage,
    this.color,
    this.tag,
    this.size,
    this.price,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
  });
}

List<Prodects> prodectsList = [
  Prodects(
      id: 0,
      name: 'Nike Shoes',
      description:
          'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.',
      assetsImage: [
        'assets/images/shoes1.jpg',
      ],
      color: [Color(0xFF69607F), Color(0xFFC21E1E), Colors.black],
      tag: 'Men',
      size: [45, 44, 43, 42, 41],
      price: 30,
      rating: 4.5,
      isFavourite: false,
      isPopular: false),
  Prodects(
      id: 1,
      name: 'Puma Shoes',
      description:
          'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.',
      assetsImage: ['assets/images/shoes2.jpg'],
      color: [Color(0xFF69607F), Colors.white],
      tag: 'Men',
      size: [45, 44, 43, 42, 41],
      price: 50,
      rating: 4.1,
      isFavourite: false,
      isPopular: false),
  Prodects(
      id: 2,
      name: 'adidas Shoes',
      description:
          'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.',
      assetsImage: ['assets/images/shoes3.jpg'],
      color: [Colors.purple, Colors.pink],
      tag: 'Women',
      size: [42, 41, 40, 39, 38],
      price: 45,
      rating: 4.9,
      isFavourite: false,
      isPopular: false),
  Prodects(
      id: 3,
      name: 'Baby Shoes',
      description:
          'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.',
      assetsImage: ['assets/images/shoes4.jpg'],
      color: [Colors.white, Colors.black, Colors.pink],
      tag: 'Baby',
      size: [29, 28, 27, 26],
      price: 15,
      rating: 4.7,
      isFavourite: false,
      isPopular: false),
  Prodects(
      id: 4,
      name: 'Baby Shoes',
      description:
          'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.',
      assetsImage: ['assets/images/shoes5.jpg'],
      color: [Color(0xFF1B80BF), Colors.white],
      tag: 'Baby',
      size: [29, 28, 27, 26],
      price: 17,
      rating: 4.5,
      isFavourite: false,
      isPopular: false),
  Prodects(
    id: 5,
    name: 'Blue Shirt',
    description:
        'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.',
    assetsImage: ['assets/images/attire1.jpg'],
    color: [Color(0xFF1B80BF), Colors.white],
    tag: 'Men',
    size: [38, 39, 40],
    price: 12,
    rating: 4.7,
  ),
];

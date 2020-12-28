import 'package:flutter/material.dart';

class ShoesProdects {
  int id;
  String name, description, assetsImage, tag;
  double price, rating;
  List<Color> color;
  List size;
  bool isFavourite, isPopular;
  ShoesProdects({
    this.id,
    this.name,
    this.description,
    this.assetsImage,
    this.color,
    this.tag,
    this.size,
    this.rating,
    this.price,
    this.isFavourite,
    this.isPopular,
  });

  // void setIsFavourite(bool isFavourite1) {
  // 	this.isFavourite = isFavourite1;
  // }
}

ShoesProdects nikeShoes = ShoesProdects(
    id: 0,
    name: 'Nike Shoes',
    description:
        'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.',
    assetsImage: 'assets/images/shoes1.jpg',
    color: [Color(0xFF69607F), Color(0xFFC21E1E), Colors.black],
    tag: 'Men',
    size: ['45', '44', '43', '42', '41'],
    price: 30,
    rating: 4.5,
    isFavourite: true,
    isPopular: false);

ShoesProdects pumaShoes = ShoesProdects(
    id: 1,
    name: 'Puma Shoes',
    description:
        'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.',
    assetsImage: 'assets/images/shoes2.jpg',
    color: [Color(0xFF69607F), Colors.white],
    tag: 'Men',
    size: ['45', '44', '43', '42', '41'],
    price: 50,
    rating: 4.1,
    isFavourite: false,
    isPopular: false);
ShoesProdects adidasShoes = ShoesProdects(
    id: 2,
    name: 'adidas Shoes',
    description:
        'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.',
    assetsImage: 'assets/images/shoes3.jpg',
    color: [Colors.purple, Colors.pink],
    tag: 'Women',
    size: ['42', '41', '40', '39', '38'],
    price: 45,
    rating: 4.9,
    isFavourite: false,
    isPopular: false);
ShoesProdects babyShoes1 = ShoesProdects(
    id: 3,
    name: 'Baby Shoes',
    description:
        'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.',
    assetsImage: 'assets/images/shoes4.jpg',
    color: [Colors.white, Colors.black, Colors.pink],
    tag: 'Baby',
    size: ['29', '28', '27', '26'],
    price: 15,
    rating: 4.7,
    isFavourite: true,
    isPopular: false);
ShoesProdects babyShoes2 = ShoesProdects(
    id: 4,
    name: 'Baby Shoes',
    description:
        'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.',
    assetsImage: 'assets/images/shoes5.jpg',
    color: [Color(0xFF1B80BF), Colors.white],
    tag: 'Baby',
    size: ['29', '28', '27', '26'],
    price: 17,
    rating: 4.5,
    isFavourite: true,
    isPopular: false);

final List<ShoesProdects> shoesProdects = [
  nikeShoes,
  pumaShoes,
  adidasShoes,
  babyShoes1,
  babyShoes2,
];

// List<ShoesProdects> shoesList = [
//   ShoesProdects(
//       name: 'Nike Shoes',
//       assetsImage: 'assets/images/shoes/shoes1',
//       color: 'Gray',
//       tag: 'Men',
//       size: 42,
//       price: 30),
//   ShoesProdects(
//       name: 'Puma Shoes',
//       assetsImage: 'assets/images/shoes/shoes2',
//       color: 'Gray , white',
//       tag: 'Men',
//       size: 44,
//       price: 50),
//   ShoesProdects(
//       name: 'Adidas Shoes',
//       assetsImage: 'assets/images/shoes/shoes3',
//       color: 'Parpel',
//       tag: 'Women',
//       size: 39,
//       price: 45),
//   ShoesProdects(
//       name: 'Baby Shoes',
//       assetsImage: 'assets/images/shoes/shoes4',
//       color: 'White',
//       tag: 'Baby',
//       size: 29,
//       price: 15),
//   ShoesProdects(
//       name: 'Baby Shoes',
//       assetsImage: 'assets/images/shoes/shoes5',
//       color: 'Blue',
//       tag: 'Baby',
//       size: 29,
//       price: 17),
// ];

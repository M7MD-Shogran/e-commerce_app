import 'package:flutter/material.dart';

class ForMenProdects {
  int id;
  String name, description, assetsImage, tag;
  double price, rating;
  List<Color> color;
  List size;
  bool isFavourite, isPopular;
  ForMenProdects({
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
}

final ForMenProdects blueShirt = ForMenProdects(
    id: 5,
    name: 'Blue Shirt',
    description:
        'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.',
    assetsImage: 'assets/images/attire1.jpg',
    color: [Color(0xFF1B80BF), Colors.white],
    tag: 'Men',
    size: ['38', '39', '40'],
    price: 12,
    rating: 4.7,
    isFavourite: false,
    isPopular: false);

final ForMenProdects greyJacket = ForMenProdects(
    id: 6,
    name: 'Grey Jacket',
    description:
        'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.',
    assetsImage: 'assets/images/attire2.jpg',
    color: [Color(0xFF69607F), Colors.white],
    tag: 'Men',
    size: ['38', '39', '40'],
    price: 35,
    rating: 4.1,
    isFavourite: true,
    isPopular: false);

// final ForMenProdects blackShirt = ForMenProdects(
//     name: 'Black Shirt',
//     description:
//         'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.',
//     assetsImage: 'assets/images/attire3.jpg',
//     color: 'Black',
//     tag: 'Men',
//     size: 36,
//     price: 17);

// final ForMenProdects greenBlouse = ForMenProdects(
//     id: 7,
//     name: 'Green Blouse',
//     description:
//         'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.',
//     assetsImage: 'assets/images/attire4.jpg',
//     color: [Colors.green, Colors.purple, Colors.pink],
//     tag: 'Men',
//     size: 36,
//     price: 40,
//     rating: 4.6);

final ForMenProdects blackBelt = ForMenProdects(
    id: 8,
    name: 'Black Belt',
    description:
        'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.',
    assetsImage: 'assets/images/belt.jpg',
    color: [Colors.white, Colors.black, Colors.amberAccent],
    tag: 'Men',
    size: ['15'],
    price: 32,
    rating: 4.2,
    isFavourite: true,
    isPopular: false);

final ForMenProdects blackTShirt = ForMenProdects(
    id: 9,
    name: 'Black T-Shirt',
    description:
        'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.',
    assetsImage: 'assets/images/black_shirt.jpg',
    color: [Colors.yellowAccent, Colors.black, Colors.brown],
    tag: 'Men',
    size: ['38', '39', '40'],
    price: 25,
    rating: 3.9,
    isFavourite: false,
    isPopular: false);

final ForMenProdects businessShoes = ForMenProdects(
    id: 10,
    name: 'Shoes',
    description:
        'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.',
    assetsImage: 'assets/images/business_shoes.jpg',
    color: [Colors.green, Color(0xFF1B80BF), Colors.white],
    tag: 'Men',
    size: ['38', '39', '40'],
    price: 75,
    rating: 4.8,
    isFavourite: false,
    isPopular: false);

final ForMenProdects shoes = ForMenProdects(
    id: 11,
    name: 'Brown Shoes',
    description:
        'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.',
    assetsImage: 'assets/images/shoes.jpg',
    color: [Colors.black, Colors.brown],
    tag: 'Men',
    size: ['38', '39', '40'],
    price: 45,
    rating: 4.4,
    isFavourite: true,
    isPopular: false);

final ForMenProdects wristWatch = ForMenProdects(
    id: 12,
    name: 'Wrist Watch',
    description:
        'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.',
    assetsImage: 'assets/images/watch.jpg',
    color: [Colors.black, Colors.brown],
    tag: 'Men',
    size: ['m'],
    price: 35,
    rating: 4.3,
    isFavourite: true,
    isPopular: false);

List<ForMenProdects> forMenProdects = [
  blueShirt,
  wristWatch,
  // greenBlouse,
  blackBelt,
  blackTShirt,
  greyJacket,
  businessShoes,
  shoes,
];

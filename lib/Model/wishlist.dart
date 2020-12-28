import 'package:flutter/material.dart';

class WishList {
  int id, size;
  String name, description, assetsImage, tag;
  double price, rating;
  List<Color> color;
  bool isFavourite, isPopular;

  WishList(
    {this.id,
    this.size,
    this.name,
    this.description,
    this.assetsImage,
    this.tag,
    this.price,
    this.rating,
    this.color,
    this.isPopular,
    this.isFavourite,}
  );
}

WishList nikeShoes = WishList(
  id: 0,
  name: 'Nike Shoes',
  description:
      'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.',
  assetsImage: 'assets/images/shoes1.jpg',
  color: [Color(0xFF69607F), Color(0xFFC21E1E), Colors.black],
  tag: 'Men',
  size: 42,
  price: 30,
  rating: 4.5,
  isFavourite: true,
  isPopular: false,
);
WishList babyShoes1 = WishList(
  id: 3,
  name: 'Baby Shoes',
  description:
      'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.',
  assetsImage: 'assets/images/shoes4.jpg',
  color: [Colors.white, Colors.black, Colors.pink],
  tag: 'Baby',
  size: 29,
  price: 15,
  rating: 4.7,
  isFavourite: true,
  isPopular: false,
);
WishList babyShoes2 = WishList(
  id: 4,
  name: 'Baby Shoes',
  description:
      'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.',
  assetsImage: 'assets/images/shoes5.jpg',
  color: [Color(0xFF1B80BF), Colors.white],
  tag: 'Baby',
  size: 29,
  price: 17,
  rating: 4.5,
  isFavourite: true,
  isPopular: false,
);

WishList greyJacket = WishList(
  id: 6,
  name: 'Grey Jacket',
  description:
      'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.',
  assetsImage: 'assets/images/attire2.jpg',
  color: [Color(0xFF69607F), Colors.white],
  tag: 'Men',
  size: 42,
  price: 35,
  rating: 4.1,
  isFavourite: true,
  isPopular: false,
);
WishList blackBelt = WishList(
  id: 8,
  name: 'Black Belt',
  description:
      'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.',
  assetsImage: 'assets/images/belt.jpg',
  color: [Colors.white, Colors.black, Colors.amberAccent],
  tag: 'Men',
  size: 15,
  price: 32,
  rating: 4.2,
  isFavourite: true,
  isPopular: false,
);
WishList shoes = WishList(
  id: 11,
  name: 'Brown Shoes',
  description:
      'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.',
  assetsImage: 'assets/images/shoes.jpg',
  color: [Colors.black, Colors.brown],
  tag: 'Men',
  size: 41,
  price: 45,
  rating: 4.4,
  isFavourite: true,
  isPopular: false,
);
WishList wristWatch = WishList(
  id: 12,
  name: 'Wrist Watch',
  description:
      'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.',
  assetsImage: 'assets/images/watch.jpg',
  color: [Colors.black, Colors.brown],
  tag: 'Men',
  price: 35,
  rating: 4.3,
  isFavourite: true,
  isPopular: false,
);

List<dynamic> wishlist = [
  nikeShoes,
  babyShoes1,
  babyShoes2,
  greyJacket,
  blackBelt,
  shoes,
  wristWatch,
];
// WishList(
// ShoesProdects(
//     id: 0,
//     name: 'Nike Shoes',
//     description:
//         'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.',
//     assetsImage: 'assets/images/shoes1.jpg',
//     color: [Color(0xFF69607F), Color(0xFFC21E1E), Colors.black],
//     tag: 'Men',
//     size: 42,
//     price: 30,
//     rating: 4.5,
//     isFavourite: true,
//     isPopular: false),
// ShoesProdects(
// id: 3,
// name: 'Baby Shoes',
// description:
//     'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.',
// assetsImage: 'assets/images/shoes4.jpg',
// color: [Colors.white, Colors.black, Colors.pink],
// tag: 'Baby',
// size: 29,
// price: 15,
// rating: 4.7,
// isFavourite: true,
// isPopular: false),
// ShoesProdects(
// id: 4,
// name: 'Baby Shoes',
// description:
//     'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.',
// assetsImage: 'assets/images/shoes5.jpg',
// color: [Color(0xFF1B80BF), Colors.white],
// tag: 'Baby',
// size: 29,
// price: 17,
// rating: 4.5,
// isFavourite: true,
// isPopular: false),
// ForMenProdects(
// id: 6,
// name: 'Grey Jacket',
// description:
//     'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.',
// assetsImage: 'assets/images/attire2.jpg',
// color: [Color(0xFF69607F), Colors.white],
// tag: 'Men',
// size: 42,
// price: 35,
// rating: 4.1,
// isFavourite: true,
// isPopular: false),
// ForMenProdects(
// id: 8,
// name: 'Black Belt',
// description:
//     'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.',
// assetsImage: 'assets/images/belt.jpg',
// color: [Colors.white, Colors.black, Colors.amberAccent],
// tag: 'Men',
// size: 15,
// price: 32,
// rating: 4.2,
// isFavourite: true,
// isPopular: false),
// ForMenProdects(
// id: 11,
// name: 'Brown Shoes',
// description:
//     'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.',
// assetsImage: 'assets/images/shoes.jpg',
// color: [Colors.black, Colors.brown],
// tag: 'Men',
// size: 41,
// price: 45,
// rating: 4.4,
// isFavourite: true,
// isPopular: false),
// ForMenProdects(
// id: 12,
// name: 'Wrist Watch',
// description:
//     'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.',
// assetsImage: 'assets/images/watch.jpg',
// color: [Colors.black, Colors.brown],
// tag: 'Men',
// price: 35,
// rating: 4.3,
// isFavourite: true,
// isPopular: false),
//       ),
// ];

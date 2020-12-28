import 'package:e_commerce_flutter/Components/colors.dart';
import 'package:flutter/material.dart';

class SalesModel {
  final String section, percent;
  final AssetImage image;
  final Color shopNowColor;
  final Alignment alignment;

  SalesModel(
    this.image,
    this.section,
    this.percent,
    this.shopNowColor,
    this.alignment,
  );
}

List<SalesModel> salesList = [
  SalesModel(AssetImage('assets/images/bg_sales.jpg'), 'Baby', '30%',
      PrimaryColor, Alignment.topLeft),
  SalesModel(AssetImage('assets/images/sales_men.jpg'), 'Men', '50%',
      PrimaryColor, Alignment.topRight),
  SalesModel(AssetImage('assets/images/sales_women.jpg'), 'Women', '70%',
      PrimaryDarkColor, Alignment.topRight),
];

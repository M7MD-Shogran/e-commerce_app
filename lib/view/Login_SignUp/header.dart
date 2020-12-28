import 'package:e_commerce_flutter/Components/colors.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String srcImage, title;

  const Header({Key key, this.srcImage, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Image.asset(
            srcImage,
            height: MediaQuery.of(context).size.height * .4,
            width: double.infinity,
          ),
          Text(
            title,
            style: TextStyle(
                color: TextColor, fontSize: 40, fontWeight: FontWeight.w800),
          ),
        ],
      ),
    );
  }
}

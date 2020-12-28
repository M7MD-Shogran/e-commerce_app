import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

import 'package:e_commerce_flutter/Components/colors.dart';

class BottomNavBar extends StatefulWidget {
  final int index;
  const BottomNavBar({
    Key key,
    this.index,
  }) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return ConvexAppBar(
        color: ButtonColor,
        backgroundColor: PrimaryColor,
        activeColor: Colors.black,
        style: TabStyle.custom,
        height: 60,
        items: [
          TabItem(icon: Icons.favorite, title: 'WishList'),
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.account_circle, title: 'Account'),
        ],
        initialActiveIndex: widget.index,
        onTap: (int index) {
          switch (index) {
            case 0:
              Navigator.pushReplacementNamed(context, '/wishlist');
              break;
            case 1:
              Navigator.pushReplacementNamed(context, '/home');
              break;
            // case 2:
            //   Navigator.pushReplacementNamed(context, '/account');
            //   break;
            default:
          }
        });
  }
}

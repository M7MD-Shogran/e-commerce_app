import 'package:e_commerce_flutter/Components/colors.dart';
import 'package:e_commerce_flutter/Model/cart.dart';
import 'package:e_commerce_flutter/view/Home_Screen/Components/cart_notification.dart';
import 'package:e_commerce_flutter/view/Home_Screen/home_screen.dart';
import 'package:e_commerce_flutter/view/coustom_drawer.dart';
import 'package:flutter/material.dart';

class CoustomAppBar extends StatefulWidget with PreferredSizeWidget {
  const CoustomAppBar({
    Key key,
  }) : super(key: key);

  @override
  _CoustomAppBarState createState() => _CoustomAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}

class _CoustomAppBarState extends State<CoustomAppBar> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    CartNotification();
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: PrimaryColor,
      elevation: 0,
      title: Text(
        'Shopping',
        style: TextStyle(
          color: TextColor,
          fontSize: 28,
          fontWeight: FontWeight.w500,
        ),
      ),
      centerTitle: true,
      actions: <Widget>[
        Stack(overflow: Overflow.visible, children: [
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: ButtonColor,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/cart');
              }),
          if (cartList.isNotEmpty) CartNotification()
        ])
      ],
    );
  }
}

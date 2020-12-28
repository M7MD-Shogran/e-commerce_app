import 'package:e_commerce_flutter/Components/colors.dart';
import 'package:e_commerce_flutter/view/Cart_Screen/Components/cart_card_list_view.dart';
import 'package:e_commerce_flutter/view/Cart_Screen/Components/check_out.dart';
import 'package:e_commerce_flutter/view/Home_Screen/home_screen.dart';
import 'package:e_commerce_flutter/view/coustom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_flutter/Model/cart.dart';

class CartScreen extends StatefulWidget {
  CartScreen({Key key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  double sum = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CoustomDrawer(),
      appBar: AppBar(
        actionsIconTheme: IconThemeData(
          color: ButtonColor,
        ),
        backgroundColor: PrimaryColor,
        centerTitle: true,
        title: Column(
          children: [
            Text(
              'Your Cart',
              style: TextStyle(
                color: TextColor,
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              cartList.length.toString() + ' items',
              style: TextStyle(
                color: TextColor,
                fontSize: 14,
                fontWeight: FontWeight.w300,
              ),
            )
          ],
        ),
      ),
      // if (cartList.isNotEmpty)
      bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50), topRight: Radius.circular(50)),
          child: CheckOut(sum: sum)),
      backgroundColor: PrimaryLightColor,
      body: _switchCartWidget(),
    );
  }

  Widget _switchCartWidget() {
    if (cartList.isEmpty) {
      return Center(
        child: Text('No Data Please Shopping First',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: TextColor, fontSize: 40, fontWeight: FontWeight.w300)),
      );
    } else
      return CartCardListView();
  }
}

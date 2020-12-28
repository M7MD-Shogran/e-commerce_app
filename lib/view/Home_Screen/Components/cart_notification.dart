import 'package:e_commerce_flutter/Model/cart.dart';
import 'package:flutter/material.dart';

class CartNotification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 6,
      right: 6,
      child: Container(
        height: 14,
        width: 14,
        decoration: BoxDecoration(
          color: Color(0xFFFF4848),
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Text(
            cartList.length.toString(),
            style: TextStyle(
              fontSize: 10,
              height: 1,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}

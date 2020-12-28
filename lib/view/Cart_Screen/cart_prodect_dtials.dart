import 'package:e_commerce_flutter/Components/colors.dart';
import 'package:e_commerce_flutter/Model/cart.dart';
import 'package:e_commerce_flutter/view/Home_Screen/Prodects/Components/selected_prodect_color.dart';
import 'package:flutter/material.dart';

class CartProdectDtials extends StatelessWidget {
  const CartProdectDtials({
    Key key,
    this.list,
    this.total,
  }) : super(key: key);

  final Cart list;
  final double total;

  @override
  Widget build(BuildContext context) {
    final GlobalKey<SelectedProdectColorState> _myKey = GlobalKey();
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 0, 16, 10),
      width: double.infinity,
      height: 130,
      child: InkWell(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
        onTap: () {},
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
          ),
          child: Row(children: [
            Image.asset(
              list.assetsImage,
              fit: BoxFit.cover,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            list.name,
                            style: TextStyle(
                                color: TextColor,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'x' + list.quantity.toString(),
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[700],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(children: [
                            Text(
                              'Color ',
                              style: TextStyle(
                                  fontSize: 14, color: Colors.grey[700]),
                            ),
                            Container(
                              padding: const EdgeInsets.all(2),
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: ButtonColor)),
                              child: DecoratedBox(
                                  decoration: BoxDecoration(
                                      color: list.color.first,
                                      shape: BoxShape.circle)),
                            ),
                          ]),
                          Text(
                            total.toString() + ' \$',
                            style: TextStyle(fontSize: 20, color: TextColor),
                          ),
                        ],
                      ),
                    ]),
              ),
            ),
          ]),
        ),
      ),
      // ),
    );
  }
}

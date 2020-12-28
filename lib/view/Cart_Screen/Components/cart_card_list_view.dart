import 'package:e_commerce_flutter/Model/cart.dart';
import 'package:e_commerce_flutter/view/Cart_Screen/Components/slider_cart_card.dart';
import 'package:e_commerce_flutter/view/Cart_Screen/cart_prodect_dtials.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class CartCardListView extends StatefulWidget {
  const CartCardListView({
    Key key,
  }) : super(key: key);

  @override
  _CartCardListViewState createState() => _CartCardListViewState();
}

class _CartCardListViewState extends State<CartCardListView> {
  final SlidableController slidableController = SlidableController();
  double sum = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: cartList.length,
          itemBuilder: (BuildContext context, int index) {
            var list = cartList[index];
            double total = list.price * list.quantity;
            sum += total;
            return Slidable(
                actionPane: SlidableDrawerActionPane(),
                controller: slidableController,
                actionExtentRatio: 0.25,
                closeOnScroll: true,
                child: CartProdectDtials(list: list, total: total),
                //     actions: [
                //   _sliderEditOrDelete(
                //       color: Color(0xFF1222B8),
                //       title: 'Edit',
                //       icon: Icon(
                //         Icons.edit,
                //         color: ButtonColor,
                //       ),
                //       press: () {
                //         setState(() {
                //           cartList.removeAt(index);
                //         });
                //       }),
                // ],
                secondaryActions: [
                  SliderCartCard(
                      color: Color(0xFFe35d5b),
                      title: 'Delete',
                      icon: Icon(Icons.delete),
                      press: () {
                        setState(() {
                          cartList.removeAt(index);
                          Navigator.pushReplacementNamed(context, '/cart');
                        });
                      }),
                ]
                //  ),
                );
          }),
    );
  }
}

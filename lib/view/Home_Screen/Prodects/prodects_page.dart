import 'package:e_commerce_flutter/Components/colors.dart';
import 'package:e_commerce_flutter/defualt_button.dart';
import 'package:e_commerce_flutter/view/Home_Screen/Prodects/Components/coustom_prodect_page_app_bar.dart';
import 'package:e_commerce_flutter/view/Home_Screen/Prodects/Components/prodects_ditals.dart';
import 'package:e_commerce_flutter/view/Home_Screen/Prodects/Components/selected_prodect_color.dart';
import 'package:e_commerce_flutter/view/Home_Screen/Prodects/Components/slected_prodect_images.dart';
import 'package:e_commerce_flutter/Model/cart.dart';
import 'package:e_commerce_flutter/view/Home_Screen/home_screen.dart';
import 'package:flutter/material.dart';

class ProdectsPage extends StatefulWidget {
  final int id;
  final String name, tag, description, assetsImage;
  final double price, rating;
  // final List<String> assetsImage;
  final List<Color> color;
  final List size;
  final bool isFavourite, isPopular;

  const ProdectsPage(
      {Key key,
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
      this.isPopular})
      : super(key: key);
  @override
  _ProdectsPageState createState() => _ProdectsPageState();
}

class _ProdectsPageState extends State<ProdectsPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  // final GlobalKey<SelectedProdectColorState> _myKey = GlobalKey();

  // ignore: non_constant_identifier_names
  String Quantity = '1';
  List<String> quaList = ['1', '2', '3', '4', '5'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Column(
        children: [
          CoustomProdectPageAppBar(
            assetsImage: widget.assetsImage,
            isFavourite: widget.isFavourite,
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    color: PrimaryColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50)),
                    // border: Border.all()
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SlectedProdectImages(
                            selectedImages: widget.assetsImage),
                        SizedBox(height: 10),
                        ProdectDetails(
                          id: widget.id,
                          name: widget.name,
                          rating: widget.rating,
                          description: widget.description,
                          color: widget.color,
                          size: widget.size,
                          price: widget.price,
                          tag: widget.tag,
                        )
                      ]),
                ),
                // Padding(
                //   padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                //   child:
                Align(
                  alignment: Alignment.bottomCenter,
                  child: DefaultButton(
                    title: 'Add To Cart',
                    press: () {
                      // int _id = widget.id;
                      // if ((cartList.singleWhere(
                      //         (element) => element.id == widget.id,
                      //         orElse: () => null)) !=
                      //     null) {
                      //   return _scaffoldKey.currentState
                      //       .showSnackBar(SnackBar(
                      //     content: Text(
                      //       'The \"${widget.name}\" is already Added ',
                      //       style: TextStyle(
                      //           fontSize: 20, color: PrimaryColor),
                      //       textAlign: TextAlign.center,
                      //     ),
                      //   ));
                      // } else {
                      cartList.add(Cart(
                        id: widget.id,
                        name: widget.name,
                        assetsImage: widget.assetsImage,
                        color: widget.color,
                        price: widget.price,
                        quantity: int.parse(Quantity),
                      ));
                      _scaffoldKey.currentState.showSnackBar(SnackBar(
                        content:
                            Text('You add \"${widget.name}\" to your cart'),
                        action: SnackBarAction(
                            textColor: PrimaryColor,
                            label: 'Undo',
                            onPressed: () {
                              cartList.removeLast();
                            }),
                      ));
                      // }
                    },
                  ),
                ),
                //     ),
                //   ),
                // ),
                // ),
                // ],
                // ),
                // ),
                // ),
                // ),
              ],
            ),
          ),
        ],
      ),
      // ),
      // ),
    );
  }
}

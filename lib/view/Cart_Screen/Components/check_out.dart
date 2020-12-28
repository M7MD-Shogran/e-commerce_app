import 'package:e_commerce_flutter/Components/colors.dart';
import 'package:e_commerce_flutter/Model/cart.dart';
import 'package:flutter/material.dart';

class CheckOut extends StatefulWidget {
  const CheckOut({
    Key key,
    @required this.sum,
  }) : super(key: key);

  final double sum;

  @override
  _CheckOutState createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  final FocusNode _checkOutFocus = FocusNode();
  @override
  Widget build(BuildContext context) {
    if (cartList.isNotEmpty) {
      return ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50), topRight: Radius.circular(50)),
        child: Container(
          height: 150,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50), topRight: Radius.circular(50)),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, -15),
                  blurRadius: 20,
                  color: Color(0xFFDADADA).withOpacity(0.15),
                ),
              ]),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: PrimaryLightColor),
                        child: Icon(Icons.wallet_giftcard_sharp)),
                    SizedBox(width: 20),
                    Expanded(
                      child: Container(
                        child: TextFormField(
                            decoration:
                                editText(textFieldIcon: Icon(Icons.email)),
                            cursorColor: ButtonColor,
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.go,
                            focusNode: _checkOutFocus,
                            onFieldSubmitted: (trem) {
                              _checkOutFocus.unfocus();
                            }),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Column(children: [
                      Text('Total :'),
                      Text('${widget.sum}'),
                    ]),
                    SizedBox(
                      width: 60,
                    ),
                    SizedBox(
                      height: 55,
                      width: MediaQuery.of(context).size.width * .55,
                      child: RaisedButton(
                        onPressed: () {},
                        child: Text(
                          'Check Out',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                        color: ButtonColor,
                        textColor: PrimaryLightColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        elevation: 10,
                        padding: EdgeInsets.only(
                            left: 36, top: 12, right: 36, bottom: 12),
                      ),
                    ),
                  ],
                ),
                // SizedBox(height: 5)
              ],
            ),
          ),
        ),
      );
    } else
      return SizedBox.shrink();
  }

  InputDecoration editText({String labelText, Icon textFieldIcon}) {
    return InputDecoration(
      hintText: 'Add Vocher Code ...',
      filled: true,
      fillColor: PrimaryLightColor,
      focusedBorder: OutlineInputBorder(
        gapPadding: 10,
        borderRadius: BorderRadius.circular(25),
        // borderSide: BorderSide(color: PrimaryColor, width: 1.5),
      ),
      enabledBorder: OutlineInputBorder(
        gapPadding: 10,
        borderRadius: BorderRadius.circular(25),
        borderSide: BorderSide(
          color: Colors.white.withOpacity(.1),
          width: 1.5,
        ),
      ),
    );
  }
}

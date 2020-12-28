import 'package:e_commerce_flutter/Components/colors.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  @required
  final String title;
  @required
  final Function press;

  const DefaultButton({Key key, this.title, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50), topRight: Radius.circular(50)),
        child: RaisedButton(
          onPressed: press,
          color: Colors.black,
          child: Text(
            title,
            style: TextStyle(
              color: PrimaryLightColor,
              fontSize: 27,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
          ),
        ),
      ),
    );
  }
}

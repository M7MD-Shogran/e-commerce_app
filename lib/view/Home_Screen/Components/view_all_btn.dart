import 'package:e_commerce_flutter/Components/colors.dart';
import 'package:flutter/material.dart';

class ViewAllBtn extends StatelessWidget {
  const ViewAllBtn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: PrimaryLightColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
          side: BorderSide(color: TextColor)),
      child: Text('View All', style: _titleTextStyle()),
      onPressed: () {
        Navigator.pushNamed(context, '/wishlist');
      },
    );
  }

  TextStyle _titleTextStyle() {
    return TextStyle(
      color: TextColor,
      fontSize: 16,
      fontWeight: FontWeight.w500,
    );
  }
}

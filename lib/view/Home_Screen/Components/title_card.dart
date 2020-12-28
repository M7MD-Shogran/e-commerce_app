import 'package:e_commerce_flutter/Components/colors.dart';
import 'package:e_commerce_flutter/view/Home_Screen/Components/view_all_btn.dart';
import 'package:flutter/material.dart';

class TitleCard extends StatelessWidget {
  const TitleCard({
    Key key,
    @required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(22, 0, 22, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title.toUpperCase(), style: _titleTextStyle()),
          ViewAllBtn()
        ],
      ),
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

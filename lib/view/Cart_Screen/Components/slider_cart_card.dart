import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class SliderCartCard extends StatelessWidget {
  const SliderCartCard({
    Key key,
    @required this.color,
    @required this.title,
    @required this.icon,
    @required this.press,
  }) : super(key: key);

  final Color color;
  final String title;
  final Icon icon;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 5, 0, 10),
      child: Container(
        height: 130,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            bottomLeft: Radius.circular(25),
          ),
        ),
        child: IconSlideAction(
          caption: title,
          color: Colors.transparent,
          icon: icon.icon,
          onTap: press,
        ),
      ),
    );
  }
}

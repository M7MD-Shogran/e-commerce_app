import 'package:e_commerce_flutter/Components/colors.dart';
import 'package:flutter/material.dart';

class SelectedProdectColor extends StatefulWidget {
  const SelectedProdectColor({
    Key key,
    @required this.color,
    @required this.colorslingth,
  }) : super(key: key);

  final List<Color> color;
  final int colorslingth;

  @override
  SelectedProdectColorState createState() => SelectedProdectColorState();
}

class SelectedProdectColorState extends State<SelectedProdectColor> {
  int selectedColor = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Colors',
            style: TextStyle(
                color: TextColor, fontSize: 18, fontWeight: FontWeight.w400)),
        SizedBox(width: 10),
        ...List.generate(
          widget.colorslingth,
          (index) => GestureDetector(
            onTap: () {
              setState(() {
                selectedColor = index;
              });
            },
            child: Container(
              margin: EdgeInsets.only(right: 4),
              padding: const EdgeInsets.all(2),
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                      color: selectedColor == index
                          ? ButtonColor
                          : Colors.transparent)),
              child: DecoratedBox(
                  decoration: BoxDecoration(
                      color: widget.color[index], shape: BoxShape.circle)),
            ),
          ),
        ),
      ],
    );
  }

  Color returnSelectedColor() {
    return widget.color[selectedColor];
  }
}

// typedef returnSelectedColor = void Function(int se);

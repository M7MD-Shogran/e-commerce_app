import 'package:e_commerce_flutter/Components/colors.dart';
import 'package:e_commerce_flutter/view/Home_Screen/Prodects/Components/prodects_ditals.dart';
import 'package:flutter/material.dart';

class DropdownStyle extends StatefulWidget {
  const DropdownStyle({
    Key key,
    @required this.itemsList,
    @required this.dorpdownValue,
  }) : super(key: key);

  final List itemsList;
  final String dorpdownValue;

  @override
  _DropdownStyleState createState() => _DropdownStyleState();
}

class _DropdownStyleState extends State<DropdownStyle> {
  String finalDropdownValue;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    finalDropdownValue = widget.dorpdownValue;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 30,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          border: Border.all()),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
            value: finalDropdownValue,
            icon: Icon(Icons.keyboard_arrow_down),
            iconEnabledColor: ButtonColor,
            items: widget.itemsList.map<DropdownMenuItem<String>>((valu) {
              return DropdownMenuItem<String>(
                value: valu,
                child: Text(valu),
              );
            }).toList(),
            onChanged: (value) {
              setState(() {
                finalDropdownValue = value;
                // _total = int.parse(_quantity) * widget.price;
              });
            }),
      ),
    );
  }
}

import 'package:e_commerce_flutter/Components/colors.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final FocusNode _searchFocus = FocusNode();
    return Container(
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        color: PrimaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
        child: TextFormField(
            decoration: _inputDecoration(),
            cursorColor: ButtonColor,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.search,
            onFieldSubmitted: (value) {
              _searchFocus.unfocus();
            }),
      ),
    );
  }

  InputDecoration _inputDecoration() {
    return InputDecoration(
      hintText: 'Search . . .',
      hintStyle: _titleTextStyle(),
      prefixIcon: Icon(
        Icons.search,
        color: ButtonColor,
      ),
      filled: true,
      fillColor: Colors.white,
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        // borderSide: BorderSide(color: PrimaryLightColor, width: 3),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: ButtonColor,
        ),
      ),
    );
  }
}

TextStyle _titleTextStyle() {
  return TextStyle(
    color: TextColor,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
}

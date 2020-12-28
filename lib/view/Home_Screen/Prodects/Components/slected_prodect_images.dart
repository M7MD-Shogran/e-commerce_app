import 'package:flutter/material.dart';
import 'package:e_commerce_flutter/Components/colors.dart';
import 'package:e_commerce_flutter/Model/shoes.dart';

class SlectedProdectImages extends StatefulWidget {
  final String selectedImages;
  const SlectedProdectImages({Key key, this.selectedImages}) : super(key: key);

  @override
  _SlectedProdectImagesState createState() => _SlectedProdectImagesState();
}

class _SlectedProdectImagesState extends State<SlectedProdectImages> {
  int selectedImage = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
            shoesProdects.length,
            (index) => GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedImage = index;
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.only(right: 10),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: selectedImage == index
                                ? ButtonColor
                                : Colors.transparent)),
                    child: Image.asset(
                      widget.selectedImages.toString(),
                      // fit: BoxFit.cover,
                    ),
                  ),
                )),
      ],
    );
  }
}

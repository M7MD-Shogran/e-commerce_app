import 'package:e_commerce_flutter/Components/colors.dart';
import 'package:e_commerce_flutter/view/Home_Screen/Prodects/Components/dropdown_style.dart';
import 'package:e_commerce_flutter/view/Home_Screen/Prodects/Components/selected_prodect_color.dart';
import 'package:flutter/material.dart';

class ProdectDetails extends StatefulWidget {
  final int id;
  final String name, tag, description, assetsImage;
  final double price, rating;
  // final List<String> assetsImage;
  final List<Color> color;
  final List size;
  final bool isFavourite, isPopular;
  const ProdectDetails(
      {Key key,
      this.id,
      this.size,
      this.name,
      this.description,
      this.color,
      this.tag,
      this.price,
      this.rating,
      this.assetsImage,
      this.isFavourite,
      this.isPopular})
      : super(key: key);

  @override
  _ProdectDetailsState createState() => _ProdectDetailsState();
}

class _ProdectDetailsState extends State<ProdectDetails> {
  // final GlobalKey<DropdownStyleState> _myKey = GlobalKey();
  String _sizeFirst, _quantity = '1';
  int selectedSize = 0;
  double _total = 0;
  List<String> quaList = ['1', '2', '3', '4', '5'];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // _sizeFirst = widget.size.first;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.name,
              style: TextStyle(
                  color: TextColor, fontSize: 30, fontWeight: FontWeight.w600),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all()),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.star,
                    size: 18,
                    color: PrimaryColor,
                  ),
                  SizedBox(width: 5),
                  Text(
                    widget.rating.toString(),
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 5),
        Text(
          widget.description,
          style: TextStyle(
              color: TextColor, fontSize: 16, fontWeight: FontWeight.w300),
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.justify,
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SelectedProdectColor(
              color: widget.color,
              colorslingth: widget.color.length,
            ),
            Row(
              children: [
                Text(
                  'Quintity',
                  style: _titlesTextStyle(),
                ),
                SizedBox(width: 10),
                DropdownStyle(itemsList: quaList, dorpdownValue: _quantity),
              ],
              // )
            ),
          ],
        ),
        SizedBox(height: 25),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(
            // if ()
            children: [
              if (widget.size.length == 0 || widget.size == null)
                Text('This Item don\'t have Size'),
              if (widget.size.length != 0 || widget.size != null)
              Text(
                'Size ',
                style: _titlesTextStyle(),
              ),
              SizedBox(width: 10),
              // DropdownStyle(
              //   dorpdownValue: _sizeFirst,
              //   itemsList: widget.size,
              // ),
              ...List.generate(widget.size.length, (index) {
                // if (widget.size.length == 0 || widget.size == null)
                  // return Text('This Item don\'t have Size');
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedSize = index;
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.only(right: 10),
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: selectedSize == index
                                ? ButtonColor
                                : Colors.transparent)),
                    child: Center(
                      child: Text(
                        widget.size[index].toString(),
                        // fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // DecoratedBox(
                  //     decoration: BoxDecoration(
                  //         color: widget.color[index],
                  //         shape: BoxShape.circle)),
                );
              }),
            ],
          ),
          Row(
            children: [
              RichText(
                text: TextSpan(
                  text: 'Tag: ',
                  style: _titlesTextStyle(),
                  children: [
                    TextSpan(text: widget.tag, style: _detailsTestStyle()),
                  ],
                ),
              ),
              SizedBox(width: 10),
            ],
          ),
        ]),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              children: [
                Text(
                  widget.price.toString() + '\$',
                  style: TextStyle(
                    color: TextColor,
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                RichText(
                  text: TextSpan(text: 'total:', children: [
                    TextSpan(text: _total.toString()),
                  ]),
                ),
              ],
            ),
          ],
        ),
      ]),
    );
  }

  TextStyle _titlesTextStyle() {
    return TextStyle(
        color: TextColor, fontSize: 18, fontWeight: FontWeight.w400);
  }

  TextStyle _detailsTestStyle() {
    return TextStyle(
        color: TextColor, fontSize: 16, fontWeight: FontWeight.w300);
  }
}

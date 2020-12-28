import 'package:e_commerce_flutter/Components/colors.dart';
import 'package:flutter/material.dart';

class ProdectsCard extends StatefulWidget {
  final int id;
  final String name, tag, assetsImage;
  final double price, rating;
  // final List<String> assetsImage;
  final List<Color> color;

  final bool isFavourite, isPopular;

  const ProdectsCard(
      {Key key,
      this.id,
      this.name,
      this.assetsImage,
      this.color,
      this.tag,
      this.rating,
      this.price,
      this.isFavourite,
      this.isPopular})
      : super(key: key);

  @override
  _ProdectsCardState createState() => _ProdectsCardState();
}

class _ProdectsCardState extends State<ProdectsCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Container(
        width: 150,
        height: 200,
        decoration: BoxDecoration(
          color: PrimaryLightColor,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.1),
              offset: Offset(0, 8),
              blurRadius: 10,
            ),
          ],
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
              child: Container(
                child: Image.asset(
                  widget.assetsImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.name,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'For ${widget.tag}',
                          style: _style(),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 3),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(14),
                              border: Border.all()),
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 12,
                                color: PrimaryColor,
                              ),
                              SizedBox(width: 3),
                              Text(
                                widget.rating.toString(),
                                style: TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                              child: Container(
                                // padding: const EdgeInsets.all(8),
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: widget.isFavourite
                                        ? Color(0xFFe35d5b).withOpacity(0.5)
                                        : Colors.white,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: widget.isFavourite
                                            ? Colors.red
                                            : Colors.black)),
                                child: Center(
                                  child: Icon(
                                      widget.isFavourite
                                          ? Icons.favorite
                                          : Icons.favorite_border,
                                      size: 18,
                                      color: widget.isFavourite
                                          ? Colors.white
                                          : Colors.black),
                                ),
                              ),
                              onTap: () {}),
                          Text(
                            '${widget.price}\$',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ]),
                  ]),
            ),
          ],
        ),
      ),
    );
  }

  TextStyle _style() {
    return TextStyle(
      color: Colors.grey[700],
      fontSize: 14,
    );
  }
}

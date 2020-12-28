import 'package:flutter/material.dart';

class CoustomProdectPageAppBar extends StatefulWidget {
  final String assetsImage;
  final bool isFavourite;
  CoustomProdectPageAppBar({
    this.assetsImage,
    this.isFavourite,
  });

  @override
  _CoustomProdectPageAppBarState createState() =>
      _CoustomProdectPageAppBarState();
}

class _CoustomProdectPageAppBarState extends State<CoustomProdectPageAppBar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        child: Stack(children: [
          Image.asset(
            widget.assetsImage,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                      icon: Icon(Icons.arrow_back),
                      color: Colors.white,
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/home');
                      }),
                ),
                Column(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: widget.isFavourite
                            ? Color(0xFFe35d5b).withOpacity(0.5)
                            : Colors.black.withOpacity(0.5),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: IconButton(
                            icon: Icon(Icons.favorite),
                            color: Colors.white,
                            onPressed: () {}),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.5),
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: Icon(Icons.share),
                          color: Colors.white,
                          onPressed: () {},
                        )),
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

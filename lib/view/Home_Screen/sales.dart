import 'package:e_commerce_flutter/Model/sales.dart';
import 'package:flutter/material.dart';

class Sales extends StatefulWidget {
  const Sales({
    Key key,
  }) : super(key: key);

  @override
  _SalesState createState() => _SalesState();
}

class _SalesState extends State<Sales> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 15),
      child: Container(
        height: MediaQuery.of(context).size.height * .2,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: salesList.length,
            itemBuilder: (BuildContext context, int index) {
              var list = salesList[index];
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                width: MediaQuery.of(context).size.height * .45,
                height: MediaQuery.of(context).size.height * .2,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: list.image,
                    fit: BoxFit.cover,
                    alignment: Alignment.topRight,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
                child: Stack(
                  children: <Widget>[
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 25, top: 10, right: 25),
                      child: Align(
                        alignment: list.alignment,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'SALES ${list.percent}',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'In ${list.section} Section',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                              ),
                            ),
                            SizedBox(
                              height: 35,
                            ),
                            InkWell(
                              child: Text(
                                'SHOP NOW',
                                style: TextStyle(
                                  color: list.shopNowColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              onTap: () {},
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}

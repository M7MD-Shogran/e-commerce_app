import 'package:e_commerce_flutter/view/Home_Screen/Prodects/prodects_card.dart';
import 'package:e_commerce_flutter/view/Home_Screen/Prodects/prodects_page.dart';
import 'package:flutter/material.dart';

class CardListView extends StatelessWidget {
  const CardListView({
    Key key,
    @required this.prodectsList,
  }) : super(key: key);

  final List prodectsList;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      height: 230,
      child: ListView.builder(
          itemCount: prodectsList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            var list = prodectsList[index];
            return InkWell(
              borderRadius: BorderRadius.circular(25),
              child: ProdectsCard(
                name: list.name,
                assetsImage: list.assetsImage,
                color: list.color,
                tag: list.tag,
                price: list.price,
                rating: list.rating,
                isFavourite: list.isFavourite,
                isPopular: list.isPopular,
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProdectsPage(
                        name: list.name,
                        description: list.description,
                        assetsImage: list.assetsImage,
                        color: list.color,
                        tag: list.tag,
                        price: list.price,
                        size: list.size,
                        rating: list.rating,
                        isFavourite: list.isFavourite,
                      ),
                    ));
              },
            );
          }),
    );
  }
}

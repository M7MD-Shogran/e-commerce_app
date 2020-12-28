import 'package:e_commerce_flutter/Components/colors.dart';
import 'package:e_commerce_flutter/Model/for_men.dart';
import 'package:e_commerce_flutter/Model/shoes.dart';
import 'package:e_commerce_flutter/view/Home_Screen/Components/card_list_view.dart';
import 'package:e_commerce_flutter/view/Home_Screen/Components/custom_app_bar.dart';
import 'package:e_commerce_flutter/view/Home_Screen/Components/search_bar.dart';
import 'package:e_commerce_flutter/view/Home_Screen/Components/title_card.dart';
import 'package:e_commerce_flutter/view/Home_Screen/bottom_nav_bar.dart';
import 'package:e_commerce_flutter/view/Home_Screen/sales.dart';
import 'package:e_commerce_flutter/view/coustom_drawer.dart';
// import 'package:e_commerce_flutter/view/drawer.dart';
// import 'package:foldable_sidebar/foldable_sidebar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // FSBStatus drawerStatus;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CoustomDrawer(),
        backgroundColor: Colors.white,
        appBar: CoustomAppBar(),
        bottomNavigationBar: BottomNavBar(index: 1),

        //Body-----------

        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SearchBar(),
              Sales(),
              TitleCard(title: 'Shoes'),
              SizedBox(height: 2),
              CardListView(prodectsList: shoesProdects),
              SizedBox(height: 15),
              TitleCard(title: 'For men'),
              CardListView(prodectsList: forMenProdects),
              SizedBox(height: 15),
              TitleCard(title: 'Top Review'),
            ],
          ),
          // ),
        ));
  }
}

import 'package:e_commerce_flutter/Components/colors.dart';
import 'package:e_commerce_flutter/view/Home_Screen/bottom_nav_bar.dart';
import 'package:e_commerce_flutter/view/coustom_drawer.dart';
import 'package:flutter/material.dart';

class WishListScreen extends StatefulWidget {
  @override
  _WishListScreenState createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CoustomDrawer(),
      appBar: AppBar(
        actionsIconTheme: IconThemeData(
          color: ButtonColor,
        ),
        backgroundColor: PrimaryColor,
        centerTitle: true,
        title: Text(
          'WishList',
          style: TextStyle(
            color: TextColor,
            fontSize: 28,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(index: 0),
      backgroundColor: PrimaryLightColor,
      // body:
      //     //  ListView.builder(
      //     //     scrollDirection: Axis.vertical,
      //     //     itemCount: wishlist.length,
      //     //     itemBuilder: (BuildContext context, int index) {
      //     //       var list = forMenProdects[index];
      //     // return
      //     GridView.count(
      //   crossAxisCount: 2,
      //   children: [
      //     ...List.generate(5, (index) {
      //       var list = wishlist[3];
      //       // List<WishList> _list = wishlist[index];
      //       return Padding(
      //         padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      //         child: ProdectsCard(name: _indexForList()[3]),
      //         //     Container(
      //         //   width: 150,
      //         //   height: 200,
      //         //   decoration: BoxDecoration(
      //         //     color: Colors.black,
      //         //     borderRadius: BorderRadius.circular(25),
      //         //   ),
      //         //   child: Column(
      //         //     children: [],
      //         //   ),
      //         // ),
      //       );
      //     })
      //   ],
      // ));
    );
  }

  // List<dynamic> _indexForList() {
  //   int _index = 0;
  //   var list;
  //   for (list in wishlist) {
  //     list = wishlist[_index];
  //     _index++;
  //   }
  //   return list;
  // }
}

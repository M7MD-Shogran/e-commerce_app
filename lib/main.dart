import 'package:e_commerce_flutter/Components/colors.dart';
import 'package:e_commerce_flutter/view/Cart_Screen/cart_screen.dart';
import 'package:e_commerce_flutter/view/Home_Screen/WishList/wishlist_screen.dart';
import 'package:e_commerce_flutter/view/Home_Screen/home_screen.dart';
import 'package:e_commerce_flutter/view/Login_SignUp/login.dart';
import 'package:e_commerce_flutter/view/Login_SignUp/sign_up.dart';
import 'package:e_commerce_flutter/view/splash_screen.dart';
import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryIconTheme: IconThemeData(
            color: ButtonColor,
          ),
          primaryColor: ButtonColor,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
        routes: {
          '/signUp': (_) => SignUp(),
          '/login': (_) => Login(),
          '/home': (_) => HomeScreen(),
          '/cart': (_) => CartScreen(),
          '/wishlist': (_) => WishListScreen(),
        });
  }
}

// void main () async{
//  SharedPreferences shPref = await SharedPreferences.getInstance();
//  bool seen = shPref.getBool('seen');
//  Widget _screen ;

//  if (seen == null || seen == false){
//    _screen = SplashScreen();
//  }else{
//    _screen = HomeScreen();
//  }
//  runApp(MyApp(_screen));
// }

// class MyApp extends StatelessWidget{
//  final Widget _screen ;
//  MyApp(this._screen);

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return MaterialApp(
//      debugShowCheckedModeBanner: false,
//      home: this._screen,
//    );
//   }}

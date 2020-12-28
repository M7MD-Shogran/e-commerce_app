import 'package:e_commerce_flutter/Components/colors.dart';
import 'package:e_commerce_flutter/view/Login_SignUp/login.dart';
import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final _controller = PageController();

  // ignore: non_constant_identifier_names
  List<IconData> IC = [
    Icons.shopping_basket,
    Icons.shopping_cart,
    Icons.add_location,
  ];
  // ignore: non_constant_identifier_names
  List<String> Title = [
    'Easy To Shop',
    'Easy To Add Iems',
    'Easy To Delivery',
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Scaffold(
          body: PageView.builder(
            controller: _controller,
            itemBuilder: (context, index) {
              return Stack(
                children: <Widget>[
                  Container(
                    color: PrimaryColor,
                  ),
                  Center(
                    child: SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 90),
                        child: Column(
                          children: <Widget>[
                            Icon(
                              IC[index],
                              size: 150,
                            ),
                            Text(
                              Title[index],
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text('Description'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
            itemCount: 3,
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _drowNavPages(),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              width: double.infinity,
              height: 60,
              child: RaisedButton(
                color: Colors.black,
                child: Text(
                  'Let\'s Shopping',
                  style: TextStyle(
                    color: PrimaryLightColor,
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        // _updateSeen();
                        return Login();
                      },
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }

  _drowNavPages() {
    return SmoothPageIndicator(
      controller: _controller,
      count: 3,
      effect: ExpandingDotsEffect(
        spacing: 5.0,
        radius: 10,
        dotWidth: 10.0,
        dotHeight: 10.0,
        paintStyle: PaintingStyle.fill,
        dotColor: PrimaryLightColor,
        activeDotColor: Colors.black,
      ),
    );
  }

  // void _updateSeen() async {
  //   SharedPreferences shpref = await SharedPreferences.getInstance();
  //   shpref.setBool('seen', true);
  // }
}

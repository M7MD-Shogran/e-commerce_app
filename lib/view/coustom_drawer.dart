import 'package:flutter/material.dart';

class CoustomDrawer extends StatelessWidget {
  const CoustomDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Container(
      color: Colors.white,
      width: mediaQuery.size.width * 0.60,
      height: mediaQuery.size.height,
      child: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
                width: double.infinity,
                height: 200,
                color: Colors.grey.withAlpha(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        "assets/images/default.jpg",
                        fit: BoxFit.cover,
                        width: 100,
                        height: 100,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Your Name",
                      style: Theme.of(context).textTheme.headline6,
                    )
                  ],
                )),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.person),
              title: Text(
                "Your Profile",
              ),
            ),
            Divider(
              height: 1,
              color: Colors.grey,
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            ),
            Divider(
              height: 1,
              color: Colors.grey,
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.payment),
              title: Text("Payments"),
            ),
            Divider(
              height: 1,
              color: Colors.grey,
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.notifications),
              title: Text("Notifications"),
            ),
            Divider(
              height: 1,
              color: Colors.grey,
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.exit_to_app),
              title: Text("Log Out"),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.red,
      child: ListView(
        children: const [
          DrawerHeader(
            padding: EdgeInsets.all(0),
            // margin: EdgeInsets.all(0),
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.all(0),
              accountName: Text("Allama Iqbal Khan"),
              accountEmail: Text("khanallama@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage:
                    AssetImage("assets/images/FB_IMG_1646520227894.jpg"),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.white,
            ),
            title: Text(
              "Home",
              textScaleFactor: 1.3,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.white,
            ),
            title: Text(
              "Profile",
              textScaleFactor: 1.3,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.mail,
              color: Colors.white,
            ),
            title: Text(
              "Email",
              textScaleFactor: 1.3,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

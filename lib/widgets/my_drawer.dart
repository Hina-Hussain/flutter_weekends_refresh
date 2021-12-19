import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/female_avatar.png"),
                ),
                accountName: Text("Hina Hussain"),
                accountEmail: Text("hina.hussain.developer@gmail.com"),
              )),
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.deepPurple,
            ),
            title: Text('Home',
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.deepPurple),),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.deepPurple,
            ),
            title: Text('Profile',
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.deepPurple),),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.mail,
              color: Colors.deepPurple,
            ),
            title: Text('Email',
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.deepPurple),),
          ),
        ],
      ),
    );
  }
}

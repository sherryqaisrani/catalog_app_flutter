import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MDrawer extends StatelessWidget {
  const MDrawer({Key? key}) : super(key: key);

  final image =
      "https://www.oceanpointins.com/wp-content/uploads/2020/02/canstockphoto26807912.jpg";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.deepPurple,
      child: ListView(
        children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: const Text('Catalog Application'),
                  accountEmail: const Text('officialsherryqaisrani@gmail.com'),
                  currentAccountPicture:
                      CircleAvatar(backgroundImage: NetworkImage(image)))),
          const ListTile(
            leading: Icon(CupertinoIcons.home, color: Colors.white),
            title: Text(
              'home',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          const ListTile(
            leading: Icon(CupertinoIcons.profile_circled, color: Colors.white),
            title: Text(
              'Profile',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          const ListTile(
            leading: Icon(CupertinoIcons.arrow_left, color: Colors.white),
            title: Text(
              'Logout',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}

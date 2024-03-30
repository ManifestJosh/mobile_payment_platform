import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu"),
        backgroundColor: Colors.blue.shade100,
      ),
      body: ListView(
        children: [
          buildListTile(
              title: 'Edit Profile', leading: Icon(Icons.person), onTap: () {}),
          buildListTile(
              title: 'Change Theme',
              leading: Icon(Icons.color_lens),
              onTap: () {}),
          buildListTile(
              title: 'Change Password', leading: Icon(Icons.key), onTap: () {}),
          buildListTile(
              title: 'Activate Account',
              leading: Icon(Icons.thumb_up_sharp),
              onTap: () {}),
          buildListTile(
              title: 'Refer Us',
              leading: Icon(Icons.people_outline_outlined),
              onTap: () {}),
          buildListTile(
              title: 'Contact Us', leading: Icon(Icons.call), onTap: () {}),
          buildListTile(
              title: 'Log out', leading: Icon(Icons.cancel), onTap: () {}),
        ],
      ),
    );
  }
}

Widget buildListTile({
  required String title,
  required leading,
  required onTap,
}) =>
    ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 16),
        leading: leading,
        title: Text(title),
        onTap: onTap);

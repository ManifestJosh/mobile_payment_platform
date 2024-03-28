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
          buildListTile(title: 'Edit Profile', leading: Icon(Icons.person)),
          buildListTile(title: 'Change Theme', leading: Icon(Icons.color_lens)),
          buildListTile(title: 'Change Password', leading: Icon(Icons.key)),
          buildListTile(
              title: 'Activate Account', leading: Icon(Icons.thumb_up_sharp)),
          buildListTile(
              title: 'Refer Us', leading: Icon(Icons.people_outline_outlined)),
          buildListTile(title: 'Contact Us', leading: Icon(Icons.call)),
          buildListTile(title: 'Log out', leading: Icon(Icons.cancel)),
        ],
      ),
    );
  }
}

Widget buildListTile({
  required String title,
  required leading,
}) =>
    ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 16),
      leading: leading,
      title: Text(title),
    );

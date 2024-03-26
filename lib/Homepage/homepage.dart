import 'package:flutter/material.dart';
import 'package:mobile_payment_platform/styles.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    String username = "Blvck";
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "W4LLET",
          style: headingTextStyle,
        ),
        centerTitle: true,
        leading: Padding(
          padding: EdgeInsets.all(16.0),
          child: Image.asset(
            'assets/logos.png',
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Row(
          children: <Widget>[
            Text(
              "Welcome,$username",
              style: accountHeadTextStyle,
            ),
            const Spacer(),
            const Icon(
              Icons.notifications,
              color: Color.fromARGB(255, 16, 33, 46),
              size: 30,
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue.shade100,
        shape: const CircularNotchedRectangle(),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.home),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.payment),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {},
              ),
            ]),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue.shade100,
        shape: const CircleBorder(eccentricity: 0.7),
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

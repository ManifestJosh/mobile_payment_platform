import 'package:flutter/material.dart';

import 'package:mobile_payment_platform/styles.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    String username = "Blvck";
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            "W4LLET",
            style: headingTextStyle,
          ),
          centerTitle: true,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/logos.png',
            ),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Row(
                children: <Widget>[
                  Text(
                    "Welcome, $username",
                    style: accountHeadTextStyle,
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.notifications,
                    color: Color.fromARGB(255, 165, 212, 249),
                    size: 30,
                  )
                ],
              ),
            ),
            GestureDetector(
              child: SizedBox(
                height: 250,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    HorizontalTile(),
                    SizedBox(
                      width: 12,
                    ),
                    HorizontalTile(),
                    SizedBox(
                      width: 12,
                    ),
                    HorizontalTile(),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (BuildContext context, index) {
                  return Container(
                    child: ListTile(),
                    margin: EdgeInsets.all(16.0),
                    height: 100,
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.all(Radius.circular(16.0))),
                  );
                },
              ),
            )
          ],
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
    });
  }
}

class HorizontalTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      margin: EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.all(Radius.circular(20))),
    );
  }
}

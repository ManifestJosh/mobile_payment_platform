import 'package:flutter/material.dart';
import 'package:mobile_payment_platform/routes/notificationpage.dart';
import 'package:mobile_payment_platform/routes/payment.dart';
import 'package:mobile_payment_platform/routes/searchbar.dart';

import 'package:mobile_payment_platform/styles.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../routes/Menupage.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    PageController _controller = PageController();
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
        body: Column(children: [
          ListTile(
            title: Text(
              "Welcome, $username",
              style: accountHeadTextStyle,
            ),
            leading: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.black26,
            ),
            trailing: IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NotificationPage()));
              },
              color: Color.fromARGB(255, 165, 212, 249),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 200,
            child: PageView.builder(
              controller: _controller,
              itemCount: 3,
              itemBuilder: (_, index) => Container(
                height: 300,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 105, 220, 240),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: WormEffect(
                    activeDotColor:
                        Colors.blue.shade200), // your preferred effect
              ),
            ],
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
          ),
        ]),
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
                  onPressed: () {
                    showSearch(
                      context: context,
                      delegate: CustomSearchDelegate(),
                    );
                  },
                ),
                IconButton(
                  icon: Icon(Icons.payment),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PaymentPage()));
                  },
                ),
                IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MenuPage()));
                  },
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

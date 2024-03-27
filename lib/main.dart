import 'package:flutter/material.dart';

import 'Homepage/firstPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "This is a Payment App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          primaryColor: Colors.green.shade300),
      home: OnBoardingScreen(),
    );
  }
}

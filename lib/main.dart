import 'package:flutter/material.dart';
import 'package:mobile_payment_platform/themes.dart';

import 'pages/firstPage.dart';

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
      themeMode: ThemeMode.light,
      darkTheme: WTheme.darkTheme,
      theme: WTheme.lightTheme,
      home: OnBoardingScreen(),
    );
  }
}

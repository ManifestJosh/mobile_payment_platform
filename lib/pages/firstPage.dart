import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mobile_payment_platform/pages/homepage.dart';
import 'package:mobile_payment_platform/pages/login.dart';
import 'package:mobile_payment_platform/styles.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController _controller = PageController();

  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              onLastPage = (index == 2);
            });
          },
          children: [
            Container(
              color: Colors.white,
              child: LottieBuilder.network(
                  "https://lottie.host/80b00d59-29af-4315-bb4e-f94463173bb8/x8iJpUzVwZ.json"),
            ),
            Container(
              color: Colors.blue.shade200,
              child: LottieBuilder.network(
                  "https://lottie.host/0205582a-0276-4bca-ae58-14b61d67eb9d/tZPCXRwqb6.json"),
            ),
            Container(
              color: Colors.blue.shade400,
              child: Center(
                child: Lottie.network(
                    'https://lottie.host/4a34d327-8efe-4702-a6ff-a43da3d5da21/rhECHJdT7i.json'),
              ),
            )
          ],
        ),
        Container(
          alignment: Alignment(0, 0.75),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            GestureDetector(
              onTap: () {
                _controller.jumpToPage(2);
              },
              child: Text('Skip'),
            ),
            SmoothPageIndicator(controller: _controller, count: 3),
            onLastPage
                ? GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return LoginScreen();
                      }));
                    },
                    child: Text('Let me in'),
                  )
                : GestureDetector(
                    onTap: () {
                      _controller.nextPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeIn,
                      );
                    },
                    child: Text('Next'),
                  ),
          ]),
        )
      ],
    ));
  }
}

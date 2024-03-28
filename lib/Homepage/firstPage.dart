import 'package:flutter/material.dart';
import 'package:mobile_payment_platform/Homepage/homepage.dart';
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
            Container(color: Colors.white),
            Container(color: Colors.blue.shade200),
            Container(
              alignment: Alignment(0, 0.5),
              color: Colors.blue.shade400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Welcome To W4LLET !",
                    textAlign: TextAlign.center,
                    style: headingTextStyle.copyWith(
                        color: Color.fromARGB(255, 208, 235, 246)),
                  ),
                ],
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
                        return Homepage();
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

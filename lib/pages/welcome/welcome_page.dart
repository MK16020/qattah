import 'package:flutter/material.dart';
import 'package:qattah_project/components/welcome1.dart';
import 'package:qattah_project/components/welcome2.dart';
import 'package:qattah_project/components/welcome3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
          controller: _controller,
          children: const [
            Welcome3(),
            Welcome2(),
            Welcome1(),
          ],
        ),
        Positioned(
          left: 176,
          right: 176,
          bottom: 100,
          child: SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: const ExpandingDotsEffect(
                activeDotColor: Color(0XFFB98286), dotColor: Colors.white, dotWidth: 12, dotHeight: 12),
          ),
        ),
      ],
    );
  }
}

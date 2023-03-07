import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Welcome1 extends StatelessWidget {
  const Welcome1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/welcoming1.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Positioned(
            left: 64,
            top: 120,
            child: Text(
              'أهلًا بك في قَطّة ',
              style: TextStyle(color: Colors.white, fontSize: 40.0),
              textAlign: TextAlign.center,
            ),
          ),
          Positioned(
            left: 10,
            top: 10,
            right: 10,
            bottom: 230,
            child: Lottie.network('https://assets10.lottiefiles.com/packages/lf20_c2foaV4x9x.json'),
          ),
          const Positioned(
            left: 180,
            top: 480,
            child: Text(
              'قسّم قطّتك',
              style: TextStyle(color: Colors.white, fontSize: 40.0),
              textAlign: TextAlign.center,
            ),
          ),
          const Positioned(
            left: 140,
            top: 560,
            child: Text(
              'و احفظها عندنا!',
              style: TextStyle(color: Colors.white, fontSize: 40.0),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Welcome2 extends StatelessWidget {
  const Welcome2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/welcoming2.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Positioned(
            top: 80,
            right: 28,
            child: Text(
              'ضيف فاتورتك،',
              style: TextStyle(color: Color(0XFF343434), fontSize: 40.0),
              textAlign: TextAlign.center,
            ),
          ),
          const Positioned(
            top: 152,
            right: 28,
            child: Text(
              'وقسمها بينك وبين ',
              style: TextStyle(color: Color(0XFF343434), fontSize: 40.0),
              textAlign: TextAlign.center,
            ),
          ),
          const Positioned(
            top: 228,
            right: 28,
            child: Text(
              'أهلك و  أصحابك',
              style: TextStyle(color: Color(0XFF343434), fontSize: 40.0),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

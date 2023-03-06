import 'package:flutter/material.dart';

import '../constants/qcolors.dart';

class ActivitiesPage extends StatelessWidget {
  const ActivitiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('أحدث النشاطات', style: TextStyle(color: QMainGreen, fontSize: 24)),
        elevation: 0.5,
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView(
          padding: const EdgeInsets.all(24.0),
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 36),
                child: Text(
                  'ليس هناك أي نشاط في حسابك حتى الآن',
                  style: TextStyle(
                    color: QDarkerGrey,
                    fontSize: 24,
                    fontWeight: FontWeight.w300,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 40),
              Image.asset('assets/images/empty_activities.png'),
              const SizedBox(height: 100),
              const Text(
                'حاول إضافة نشاط!',
                style: TextStyle(
                  color: QDarkerGrey,
                  fontSize: 24,
                  fontWeight: FontWeight.w300,
                ),
                textAlign: TextAlign.center,
              ),
            ]),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}

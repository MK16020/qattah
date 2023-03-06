import 'package:flutter/material.dart';

import '../constants/qcolors.dart';

class MembersPage extends StatelessWidget {
  const MembersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('الأعضاء', style: TextStyle(color: QMainGreen, fontSize: 24)),
        elevation: 0.5,
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView(
          padding: const EdgeInsets.all(24.0),
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text('مرحبًا ...', style: TextStyle(color: QBlack, fontSize: 24)),
              const SizedBox(height: 40),
              const Text(
                'ليس لديك أي أعضاء حتى الآن',
                style: TextStyle(color: QDarkerGrey, fontSize: 24, fontWeight: FontWeight.w300),
              ),
              const SizedBox(height: 30),
              Image.asset('assets/images/empty_members.png'),
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 64),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                  ),
                  child: const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                    Text('إضافة أعضاء', style: TextStyle(color: QMainPink, fontSize: 20)),
                    Icon(Icons.group_add_outlined, color: QMainPink),
                  ]),
                ),
              ),
            ]),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}

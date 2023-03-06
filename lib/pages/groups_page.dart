import 'package:flutter/material.dart';

import '../constants/qcolors.dart';

class GroupsPage extends StatelessWidget {
  const GroupsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('المجموعات', style: TextStyle(color: QMainGreen, fontSize: 24)),
        elevation: 0.5,
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 36),
            child: Text(
              'تسهل المجموعات تقسيم الفواتير ومشاركة النفقات والمزيد',
              style: TextStyle(
                color: QDarkerGrey,
                fontSize: 24,
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 40),
          Image.asset('assets/images/empty_groups.png'),
          const SizedBox(height: 100),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 64),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
              ),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: const [
                Text('إبدأ مجموعة', style: TextStyle(color: QMAinPink, fontSize: 20)),
                Icon(Icons.group_add_outlined, color: QMAinPink),
              ]),
            ),
          ),
        ]),
      ),
      backgroundColor: Colors.white,
    );
  }
}

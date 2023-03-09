
import 'package:flutter/material.dart';

import '../constants/qcolors.dart';
import '../pages/member/add_member_page.dart';

class EmptyMember extends StatelessWidget {
  const EmptyMember({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: ListView(
        padding: const EdgeInsets.all(24.0),
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text('مرحبًا ...', style: TextStyle(fontSize: 24)),
            const SizedBox(height: 40),
            const Text(
              'لم يتم إضافة أصدقاء حتى الآن',
              style: TextStyle(color: QDarkerGrey, fontSize: 24, fontWeight: FontWeight.w300),
            ),
            const SizedBox(height: 30),
            Image.asset('assets/images/empty_members0.png'),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 64),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AddMemberPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                  padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                ),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: const [
                  Text('إضافة صديق', style: TextStyle(color: QMainPink, fontSize: 20)),
                  Icon(Icons.group_add_outlined, color: QMainPink),
                ]),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../constants/qcolors.dart';

class AddActivityPage extends StatelessWidget {
  const AddActivityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text('أحدث النشاطات', style: TextStyle(fontSize: 24)),
        centerTitle: true,
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 28.0, right: 28),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text('أنت أضفت "بيتزا"', style: TextStyle(color: QMainGreen, fontSize: 16)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, right: 28),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text('أنت تحصل على 25.00 SAR', style: TextStyle(color: QDarkerGrey, fontSize: 14)),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Divider(
              thickness: 1,
              indent: 0,
              endIndent: 0,
            ),
          ],
        ),
      ),
    );
  }
}

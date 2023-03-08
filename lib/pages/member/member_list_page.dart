import 'package:flutter/material.dart';

import '../../components/member_card.dart';
import '../../constants/qcolors.dart';

class MemberListPage extends StatelessWidget {
  const MemberListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search_sharp,
            color: QDarkerGrey,
          ),
        ),
        title: const Text(
          'الأعضاء',
          style: TextStyle(color: QMainGreen, fontSize: 24),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_forward_ios_rounded,
              color: QDarkerGrey,
            ),
          ),
        ],
        centerTitle: true,
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            for (int i = 0; i < 4; i++) ...[
              const MemberCard(),
              const SizedBox(height: 10),
            ],
          ],
        ),
      ),
    );
  }
}

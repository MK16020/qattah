import 'package:flutter/material.dart';

import '../components/member_card.dart';
import '../constants/qcolors.dart';

class MemberListPage extends StatelessWidget {
  const MemberListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.people_outline_outlined,
            color: QMainPink,
          ),
        ),
        title: const Text(
          'الأعضاء',
          style: TextStyle(color: QMainGreen, fontSize: 24),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search_sharp,
              color: QDarkerGrey,
            ),
          ),
        ],
        elevation: 0.5,
        backgroundColor: Colors.white,
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

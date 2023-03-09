import 'package:flutter/material.dart';
import 'package:qattah_project/models/user_model.dart';

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
          'الأصدقاء',
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
            for (final user in UserModel.users) ...[
              MemberCard(name: user.name),
              const SizedBox(height: 10),
            ],
          ],
        ),
      ),
    );
  }
}

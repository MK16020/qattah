import 'package:flutter/material.dart';

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
      body: ListView(children: const []),
    );
  }
}

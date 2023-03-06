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
            Icons.arrow_back_ios,
            color: QDarkerGrey,
          ),
        ),
        title: const Text(
          'الحساب',
          style: TextStyle(color: QMainGreen, fontSize: 24),
        ),
        elevation: 0.5,
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
    );
  }
}

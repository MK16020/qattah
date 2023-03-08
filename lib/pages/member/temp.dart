import 'package:flutter/material.dart';
import 'package:qattah_project/pages/member/add_member_page.dart';

class Temp extends StatelessWidget {
  const Temp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomSheet: BottomSheet(
        onClosing: () {},
        builder: (BuildContext context) {
          return const AddMemberPage();
        },
      ),
    );
  }
}

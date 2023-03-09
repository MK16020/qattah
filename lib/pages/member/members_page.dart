import 'package:flutter/material.dart';
import 'package:qattah_project/components/member_list.dart';
import 'package:qattah_project/models/user_model.dart';
import 'package:qattah_project/pages/member/add_member_page.dart';

import '../../components/empty_member.dart';
import '../../constants/qcolors.dart';

class MembersPage extends StatelessWidget {
  const MembersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('الأصدقاء', style: TextStyle(fontSize: 24)),
        centerTitle: true,
      ),
      body: (UserModel.users.isEmpty)? EmptyMember(): MemberList(),
    );
  }
}

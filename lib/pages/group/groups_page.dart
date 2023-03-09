import 'package:flutter/material.dart';
import 'package:qattah_project/components/full_groups.dart';
import 'package:qattah_project/models/group_model.dart';

import '../../components/empty_group.dart';

class GroupsPage extends StatelessWidget {
  const GroupsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: (GroupModel.groups.isEmpty) ? const EmptyGroup() : const FullGroups(),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../components/empty_group.dart';
import '../../components/full_groups.dart';
import '../../models/group_model.dart';

class GroupsPage extends StatelessWidget {
  const GroupsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: (GroupModel.groups.isEmpty) ? const EmptyGroup() : const FullGroups(),
    );
  }
}

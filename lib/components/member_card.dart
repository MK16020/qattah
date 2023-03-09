import 'package:flutter/material.dart';
import 'package:qattah_project/pages/member/details_member_activity.dart';

import '../constants/qcolors.dart';

class MemberCard extends StatelessWidget {
  const MemberCard({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: const BoxDecoration(border: Border(bottom: BorderSide(color: QLightGrey))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile.png'),
              radius: 20,
            ),
            const SizedBox(width: 10),
            Expanded(flex: 2, child: Text(name)),
            Expanded(
              flex: 2,
              child: Column(
                children: const [
                  Text('يدين لك: '),
                  Text('0.00 SAR'),
                ],
              ),
            ),
            InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsMemberActivity(name: name)));
                },
                child: const Icon(Icons.keyboard_arrow_left_outlined)),
          ],
        ),
      ),
    );
  }
}

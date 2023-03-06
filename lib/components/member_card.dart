import 'package:flutter/material.dart';

import '../constants/qcolors.dart';

class MemberCard extends StatelessWidget {
  const MemberCard({
    super.key,
  });

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
            const Expanded(flex: 2, child: Text('رناد')),
            Expanded(
              flex: 2,
              child: Column(
                children: const [
                  Text('يدين لك: '),
                  Text('50.00 SAR'),
                ],
              ),
            ),
            const Icon(Icons.keyboard_arrow_left_outlined),
          ],
        ),
      ),
    );
  }
}

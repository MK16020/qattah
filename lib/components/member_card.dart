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
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('images/profile.png'),
              radius: 20,
            ),
            SizedBox(width: 10),
            Expanded(flex: 2, child: Text('ريناد')),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Text('يدين لك: '),
                  Text('50,00 SAR'),
                ],
              ),
            ),
            Icon(Icons.keyboard_arrow_left_outlined),
          ],
        ),
      ),
    );
  }
}

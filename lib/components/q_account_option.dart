import 'package:flutter/material.dart';
import 'package:qattah_project/constants/qcolors.dart';

class QAccountOption extends StatelessWidget {
  const QAccountOption({super.key, required this.icon, required this.title});
  final Icon icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text(title),
      trailing: const Icon(
        Icons.keyboard_arrow_left_rounded,
        color: QLightGrey,
      ),
      onTap: () {},
    );
  }
}

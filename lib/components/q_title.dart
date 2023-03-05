import 'package:flutter/material.dart';

class QTitle extends StatelessWidget {
  const QTitle({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(color: Color(0xff939393), fontSize: 24),
    );
  }
}

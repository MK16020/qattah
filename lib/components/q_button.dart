import 'package:flutter/material.dart';
import 'package:qattah_project/constants/qcolors.dart';

class QButton extends StatelessWidget {
  const QButton({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: QMAinPink,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
        ),
        child: Text(
          title,
          style: const TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:qattah_project/constants/qcolors.dart';

class QButton extends StatelessWidget {
  const QButton({super.key, required this.title, required this.onPressed});
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: QMainPink,
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

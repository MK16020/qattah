import 'package:flutter/material.dart';

class Temp extends StatelessWidget {
  const Temp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Bottom Sheet'),
      ),

      bottomSheet: BottomSheet(
        onClosing: () {},
        builder: (BuildContext context) {
          return Container(
            alignment: Alignment.center,
            color: Colors.grey.shade200,
            width: double.infinity,
            height: 200,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(foregroundColor: Colors.white, backgroundColor: Colors.green),
              child: const Text('Close Bottom Sheet'),
            ),
          );
        },
      ),
    );
  }
}

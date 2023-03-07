import 'package:flutter/material.dart';

import '../constants/qcolors.dart';

class FullGroupsPage extends StatelessWidget {
  const FullGroupsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.group_add, size: 32, color: QLightPink),
        title: const Text('المجموعات', style: TextStyle(color: QMainGreen, fontSize: 24)),
        actions: const [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Icon(Icons.search, size: 32, color: Colors.black),
          ),
        ],
        elevation: 0.5,
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                const SizedBox(
                  width: 8,
                ),
                Container(
                  decoration: const BoxDecoration(
                    border: Border.fromBorderSide(BorderSide(color: Colors.grey, width: .5)),
                    shape: BoxShape.circle,
                  ),
                  width: 48,
                  height: 48,
                  child: const Icon(Icons.pages, size: 40, color: Color(0XFF4C43BA)),
                ),
                const SizedBox(
                  width: 16,
                ),
                const Text('حفل التخرج', style: TextStyle(color: Colors.black, fontSize: 16)),
                const Spacer(),
                const Text('خالية من الحسابات', style: TextStyle(color: QLightGrey, fontSize: 12)),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: QLightGrey,
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                const SizedBox(
                  width: 8,
                ),
                Container(
                  decoration: const BoxDecoration(
                    border: Border.fromBorderSide(BorderSide(color: Colors.grey, width: .5)),
                    shape: BoxShape.circle,
                  ),
                  width: 48,
                  height: 48,
                  child: const Icon(Icons.home, size: 40, color: Color.fromARGB(255, 67, 153, 70)),
                ),
                const SizedBox(
                  width: 16,
                ),
                const Text('البيت', style: TextStyle(color: Colors.black, fontSize: 16)),
                const Spacer(),
                const Text('خالية من الحسابات', style: TextStyle(color: QLightGrey, fontSize: 12)),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: QLightGrey,
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 1,
          ),
        ],
      ),
    );
  }
}

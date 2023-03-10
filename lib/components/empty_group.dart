import 'package:flutter/material.dart';

import '../constants/qcolors.dart';
import '../pages/group/add_group_page.dart';

class EmptyGroup extends StatelessWidget {
  const EmptyGroup({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('المجموعات', style: TextStyle(fontSize: 24)),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(24.0),
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 36),
              child: Text(
                'تسهل المجموعات تقسيم الفواتير ومشاركة النفقات والمزيد',
                style: TextStyle(
                  color: QDarkerGrey,
                  fontSize: 24,
                  fontWeight: FontWeight.w300,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 40),
            Image.asset('assets/images/empty_groups0.png'),
            const SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 64),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AddGroupPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                  padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const AddGroupPage()),
                    );
                  },
                  child:  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                    Text('إبدأ مجموعة', style: TextStyle(color: QMainPink, fontSize: 20)),
                    Icon(Icons.group_add_outlined, color: QMainPink),
                  ]),
                ),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}

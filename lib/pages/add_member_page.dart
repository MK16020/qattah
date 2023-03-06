import 'package:flutter/material.dart';
import 'package:qattah_project/pages/add_qattah_page.dart';

import '../constants/qcolors.dart';

class AddMemberPage extends StatelessWidget {
  const AddMemberPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios, color: QDarkerGrey),
        ),
        leading:
            const Padding(padding: EdgeInsets.all(8.0), child: Icon(Icons.arrow_back_ios, color: Color(0XFF33523E))),
        title: const Text('اضافة حساب', style: TextStyle(color: QMainGreen, fontSize: 24)),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AddQattahPage()),
              );
            },
            child: const Text(
              'حفظ',
              style: TextStyle(color: QDarkerGrey),
            ),
          ),
        ],
        elevation: 0.5,
        backgroundColor: Colors.white,
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(36.0),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 12,
              ),
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text('الاسم',
                    style: TextStyle(color: Color(0XFF33523E), fontSize: 16), textAlign: TextAlign.center),
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: '...اسم',
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue), borderRadius: BorderRadius.all(Radius.circular(10))),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey), borderRadius: BorderRadius.all(Radius.circular(10))),
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8))),

                ),
              ),
              Expanded(
                flex: 6,
                child: TextField(
                  decoration:
                      InputDecoration(hintText: 'ادخل اسم، بريد إلكتروني، أو رقم جوال', border: InputBorder.none),
                ),
              ),
            ],
          ),
          const Text('أعضاء في قطة:', style: TextStyle(color: QMainGreen)),
          for (int i = 0; i < 4; i++)
            const ListTile(
              leading: CircleAvatar(foregroundImage: AssetImage('images/profile.png')),
              title: Text('ريما خالد'),
              trailing: Icon(
                Icons.circle_outlined,
                color: QLightGrey,
              ),
              contentPadding: EdgeInsets.all(10),
            ),
          const Text('من جهات الإتصال الخاصة بك:', style: TextStyle(color: QMainGreen)),
          for (int i = 0; i < 4; i++) ...[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'محمد',
                      style: TextStyle(color: QMainPink),
                    ),
                    Text(
                      '05837838928',
                      style: TextStyle(color: QDarkerGrey),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Icon(
                    Icons.circle_outlined,
                    color: QLightGrey,
                  ),
                ),
              ],
            ),
            const Divider(),
          ],
        ],
      ),
    );
  }
}

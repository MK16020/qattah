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
      body: const Padding(
        padding: EdgeInsets.all(36.0),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: EdgeInsets.all(12.0),
                child: Text('الاسم',
                    style: TextStyle(color: Color(0XFF33523E), fontSize: 16), textAlign: TextAlign.center),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: '...اسم',
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
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
        ),
      ),
    );
  }
}

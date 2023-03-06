import 'package:flutter/material.dart';

class AddMemberPage extends StatelessWidget {
  const AddMemberPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'إضافة عضو جديد',
          style: TextStyle(
            color: Color(0XFF33523E),
            fontSize: 32,
          ),
        ),
        actions: const [
          Padding(padding: EdgeInsets.all(8.0), child: Icon(Icons.arrow_forward_ios, color: Color(0XFF33523E))),
        ],
        elevation: 0.5,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(36.0),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
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
                textAlign: TextAlign.right,
              ),
              const SizedBox(
                height: 24,
              ),
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text('رقم الجوال',
                    style: TextStyle(color: Color(0XFF33523E), fontSize: 16), textAlign: TextAlign.center),
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: '05xxxxxxx',
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue), borderRadius: BorderRadius.all(Radius.circular(10))),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey), borderRadius: BorderRadius.all(Radius.circular(10))),
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                ),
                textAlign: TextAlign.right,
              ),
              const SizedBox(
                height: 24,
              ),
              const Text(
                'أو',
                style: TextStyle(color: Color(0XFF939393), fontSize: 24),
              ),
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text('البريد الإلكتروني',
                    style: TextStyle(color: Color(0XFF33523E), fontSize: 16), textAlign: TextAlign.center),
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Ex@gmail.com',
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue), borderRadius: BorderRadius.all(Radius.circular(10))),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey), borderRadius: BorderRadius.all(Radius.circular(10))),
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                ),
                textAlign: TextAlign.right,
              ),
              const SizedBox(
                height: 100,
              ),
              Center(
                child: SizedBox(
                  width: 180,
                  height: 56,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0XFF33523E),
                      elevation: 5,
                      shadowColor: const Color.fromARGB(255, 114, 114, 114),
                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                    ),
                    child: const Text('إضافة', style: TextStyle(color: Colors.white, fontSize: 20)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

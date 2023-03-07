import 'package:flutter/material.dart';
import 'package:qattah_project/pages/account_page.dart';

import '../components/q_account_option.dart';
import '../constants/qcolors.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('الاعدادات', style: TextStyle(color: QMainGreen, fontSize: 24)),
        elevation: 0.5,
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 16),
          children: [
            const SizedBox(width: 100),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AccountPage()),
                );
              },
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: QLightGrey,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: const Placeholder(fallbackWidth: 120, fallbackHeight: 130),
                    // child: Image.file(imageFile!, width: 120, height: 130, fit: BoxFit.cover),
                  ),
                  const Expanded(
                    flex: 4,
                    child: ListTile(
                      title: Text('نورة '),
                      subtitle: Text('ex@gmail.com'),
                      trailing: Icon(Icons.keyboard_arrow_left_outlined),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 80),
            const QAccountOption(icon: Icon(Icons.notifications_on_outlined), title: 'الإشعارات'),
            const QAccountOption(icon: Icon(Icons.remove_red_eye_outlined), title: 'سياسة الخصوصية'),
            const QAccountOption(icon: Icon(Icons.phone_enabled_outlined), title: 'تواصل معنا'),
            const SizedBox(
              height: 50,
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'تسجيل الخروج',
                style: TextStyle(color: QLightestGreen),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

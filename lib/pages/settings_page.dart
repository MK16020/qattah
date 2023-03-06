import 'package:flutter/material.dart';
import 'package:qattah_project/pages/account_page.dart';

import '../components/account_image.dart';
import '../components/q_account_option.dart';
import '../constants/qcolors.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('الاعدادات', style: TextStyle(color: QBlack)),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: ListView(
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
            child: const Row(
              children: [
                Expanded(flex: 1, child: AccountImage()),
                Expanded(
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
          const QAccountOption(icon: Icon(Icons.person_outline), title: 'تغيير اسم المستخدم'),
          const QAccountOption(icon: Icon(Icons.mail_outline), title: 'تغيير البريد الإلكتروني'),
          const QAccountOption(icon: Icon(Icons.vpn_key_outlined), title: 'تغيير كلمة المرور'),
          const QAccountOption(icon: Icon(Icons.person_off_outlined), title: 'حذف الحساب'),
        ],
      ),
    );
  }
}

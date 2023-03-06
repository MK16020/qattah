import 'package:flutter/material.dart';
import 'package:qattah_project/constants/qcolors.dart';

import '../components/account_image.dart';
import '../components/q_account_option.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('الحساب', style: TextStyle(color: QMainGreen, fontSize: 24)),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios, color: QDarkerGrey)),
        ],
        elevation: 0.5,
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 16),
          children: [
            const AccountImage(),
            const SizedBox(height: 30),
            Container(
              decoration: const BoxDecoration(border: Border(bottom: BorderSide(color: QLightGrey))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(width: 100),
                  const Text('نورة '),
                  const SizedBox(width: 100),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.mode_edit_outline_outlined,
                      color: QMainPink,
                    )),
              ],
            ),
          ),
          const SizedBox(height: 100),
          const QAccountOption(icon: Icon(Icons.person_outline), title: 'تغيير اسم المستخدم'),
          const QAccountOption(icon: Icon(Icons.mail_outline), title: 'تغيير البريد الإلكتروني'),
          const QAccountOption(icon: Icon(Icons.vpn_key_outlined), title: 'تغيير كلمة المرور'),
          const QAccountOption(icon: Icon(Icons.person_off_outlined), title: 'حذف الحساب'),
        ],
      ),
    ));
  }
}

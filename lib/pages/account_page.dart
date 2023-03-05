import 'package:flutter/material.dart';
import 'package:qattah_project/constants/qcolors.dart';

import '../components/q_account_option.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: const Text('الحساب', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 16),
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage('images/profile.png')),
              borderRadius: BorderRadius.all(
                Radius.circular(60),
              ),
            ),
            height: 130,
            clipBehavior: Clip.hardEdge,
          ),
          const SizedBox(height: 30),
          Container(
            decoration: const BoxDecoration(border: Border(bottom: BorderSide(color: QLightGrey))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: 100),
                const Text('نورة '),
                const SizedBox(width: 100),
                IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
              ],
            ),
          ),
          const SizedBox(height: 100),
          const QAccountOption(icon: Icon(Icons.person), title: 'تغيير اسم المستخدم'),
          const QAccountOption(icon: Icon(Icons.mail), title: 'تغيير البريد الإلكتروني'),
          const QAccountOption(icon: Icon(Icons.vpn_key_rounded), title: 'تغيير كلمة المرور'),
          const QAccountOption(icon: Icon(Icons.person_off_sharp), title: 'حذف الحساب'),
        ],
      ),
    );
  }
}

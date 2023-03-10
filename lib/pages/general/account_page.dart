import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:qattah_project/constants/qcolors.dart';
import 'package:qattah_project/models/user_model.dart';

import '../../components/account_image.dart';
import '../../components/q_account_option.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  late UserModel user = UserModel(id: '', name: 'User not found', imageUrl: '');

  @override
  void initState() {
    super.initState();
    getUserInfo();
  }

  getUserInfo() {
    FirebaseFirestore.instance
        .collection('User')
        .doc(FirebaseAuth.instance.currentUser?.uid)
        .snapshots()
        .listen((event) {
      final newUser = UserModel.fromMap(event.data() ?? {});
      setState(() {
        if (user.id == '') user = UserModel(id: '', name: 'User not found', imageUrl: '');
        user = newUser;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('الحساب', style: TextStyle(fontSize: 24)),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_forward_ios),
          ),
        ],
        elevation: 0.5,
        centerTitle: true,
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 16),
          children: [
            AccountImage(
              user: user,
            ),
            const SizedBox(height: 30),
            Container(
              decoration: const BoxDecoration(border: Border(bottom: BorderSide(color: QLightGrey))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(width: 100),
                  Text(
                    user.name,
                    style: const TextStyle(fontSize: 20),
                  ),
                  const SizedBox(width: 100),
                  // IconButton(
                  //   onPressed: () {},
                  //   icon: const Icon(
                  //     Icons.mode_edit_outline_outlined,
                  //     color: QMainPink,
                  //   ),
                  // ),
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
      ),
    );
  }
}

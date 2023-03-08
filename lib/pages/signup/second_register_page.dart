import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:qattah_project/components/q_button.dart';
import 'package:qattah_project/components/q_text_field.dart';
import 'package:qattah_project/models/user_model.dart';
import 'package:qattah_project/pages/general/navbar_page.dart';

import '../../constants/qcolors.dart';

class SecondRegisterPage extends StatefulWidget {
  const SecondRegisterPage({super.key, required this.email, required this.password});
  final String email;
  final String password;

  @override
  State<SecondRegisterPage> createState() => _SecondRegisterPageState();
}

class _SecondRegisterPageState extends State<SecondRegisterPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  register() async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(email: widget.email, password: widget.password);
    var currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser != null) {
      UserModel user = UserModel(id: currentUser.uid, name: nameController.text.trim(), imageUrl: 'images/profile.png');
      print(FirebaseAuth.instance.currentUser?.uid);
      FirebaseFirestore.instance.collection('User').doc(currentUser.uid).set(user.toMap());
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const NavbarPage()),
      );
    }
  }

  @override
  void dispose() {
    nameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
            color: QDarkerGrey,
          ),
        ),
        title: const Text('إنشاء حساب جديد', style: TextStyle(fontSize: 24)),
        centerTitle: true,
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView(
          padding: const EdgeInsets.all(24),
          children: [
            const SizedBox(height: 100),
            QTextField(
              name: 'الاسم الكامل',
              inputController: nameController,
              hint: 'الاسم الكامل',
            ),
            QTextField(
              name: 'رقم الجوال (اختياري)',
              inputController: passwordController,
              hint: ' 0505xxxxxx',
              isOptional: true,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                'استخدم عملة الريال السعودي (SAR) كعملتي الاساسية ',
                style: TextStyle(color: QMainGreen, fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {},
              child: const Text(
                'تغيير العملة',
                style: TextStyle(color: QDarkerGrey, fontSize: 16),
              ),
            ),
            const SizedBox(height: 40),
            QButton(
              title: 'تم',
              onPressed: register(),
            ),
            const SizedBox(height: 60),
            Center(
              child: InkWell(
                onTap: () {},
                child: const Text(
                  'بالتسجيل أنت تقبل بشروط وأحكام قَطّة',
                  style: TextStyle(color: QDarkerGrey, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

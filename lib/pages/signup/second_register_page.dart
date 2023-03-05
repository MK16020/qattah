import 'package:flutter/material.dart';
import 'package:qattah_project/components/q_button.dart';
import 'package:qattah_project/components/q_text_field.dart';

class SecondRegisterPage extends StatefulWidget {
  const SecondRegisterPage({super.key});

  @override
  State<SecondRegisterPage> createState() => _SecondRegisterPageState();
}

class _SecondRegisterPageState extends State<SecondRegisterPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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
            color: Colors.black,
          ),
        ),
        title: const Text('إنشاء حساب جديد', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
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
            isSecure: true,
            hint: 'رقم الجوال (اختياري)',
          ),
          const Text('استخدم الريال السعودي (SAR) كعملتي الاساسية '),
          InkWell(
            onTap: () {},
            child: const Text('تغيير العملة'),
          ),
          const SizedBox(height: 50),
          const QButton(
            title: 'تم',
          ),
          const SizedBox(height: 50),
          InkWell(
            onTap: () {},
            child: const Text('بالتسجيل أنت تقبل بشروط وأحكام قطّة'),
          ),
        ],
      ),
    );
  }
}

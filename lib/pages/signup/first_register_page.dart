import 'package:flutter/material.dart';
import 'package:qattah_project/components/q_button.dart';
import 'package:qattah_project/components/q_text_field.dart';
import 'package:qattah_project/components/q_title.dart';

class FirstRegisterPage extends StatefulWidget {
  const FirstRegisterPage({super.key});

  @override
  State<FirstRegisterPage> createState() => _FirstRegisterPageState();
}

class _FirstRegisterPageState extends State<FirstRegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
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
          const SizedBox(height: 50),
          const QTitle(
            title: 'انشئ حسابك في قطّة ',
          ),
          const SizedBox(height: 50),
          QTextField(
            name: 'البريد الإلكتروني',
            inputController: emailController,
            hint: 'ex@gmail.com',
          ),
          QTextField(
            name: 'كلمة المرور',
            inputController: passwordController,
            isSecure: true,
            hint: '• • • • • • • •',
          ),
          InkWell(
            onTap: () {},
            child: const Text('نسيت كلمة المرور '),
          ),
          const SizedBox(height: 50),
          const QButton(
            title: 'التالي',
          ),
        ],
      ),
    );
  }
}

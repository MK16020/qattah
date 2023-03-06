import 'package:flutter/material.dart';
import 'package:qattah_project/components/q_button.dart';
import 'package:qattah_project/components/q_text_field.dart';
import 'package:qattah_project/components/q_title.dart';
import 'package:qattah_project/constants/qcolors.dart';
import 'package:qattah_project/pages/signup/second_register_page.dart';

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
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back_ios, color: QDarkerGrey)),
        title: const Text('إنشاء حساب جديد', style: TextStyle(color: QMainGreen, fontSize: 24)),
        elevation: 0.5,
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          const SizedBox(height: 50),
          const QTitle(
            title: 'انشئ حسابك في قَطّة ',
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
          const SizedBox(height: 50),
          QButton(
            title: 'التالي',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SecondRegisterPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}

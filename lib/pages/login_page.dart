import 'package:flutter/material.dart';
import 'package:qattah_project/components/q_button.dart';
import 'package:qattah_project/components/q_text_field.dart';
import 'package:qattah_project/components/q_title.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
        title: const Text('تسجيل الدخول', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const SizedBox(height: 50),
          const QTitle(
            title: 'مرحبا بعودتك',
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
            title: 'تسجيل الدخول',
          ),
        ],
      ),
    );
  }
}

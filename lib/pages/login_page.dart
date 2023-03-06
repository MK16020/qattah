import 'package:flutter/material.dart';
import 'package:qattah_project/components/q_button.dart';
import 'package:qattah_project/components/q_text_field.dart';
import 'package:qattah_project/components/q_title.dart';
import 'package:qattah_project/pages/navbar_page.dart';
import 'package:qattah_project/pages/reset_password_page.dart';

import '../constants/qcolors.dart';

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
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: QDarkerGrey,
          ),
        ),
        title: const Text(
          'تسجيل الدخول',
          style: TextStyle(color: QMainGreen, fontSize: 24),
        ),
        elevation: 0.5,
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView(
          padding: const EdgeInsets.all(24),
          children: [
            const SizedBox(height: 50),
            const QTitle(
              title: 'مرحبًا بعودتك',
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
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ResetPasswordPage()),
                );
              },
              child: const Text(
                'نسيت كلمة المرور ',
                style: TextStyle(color: QLightGrey, fontSize: 16),
              ),
            ),
            const SizedBox(height: 50),
            QButton(
              title: 'تسجيل الدخول',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NavbarPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

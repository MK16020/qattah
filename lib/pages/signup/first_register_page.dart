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

  String errorMessage = '';

  void isValid() {
    if (emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SecondRegisterPage(
            email: emailController.text.trim(),
            password: passwordController.text.trim(),
          ),
        ),
      );
    } else {
      errorMessage = 'يرجى تعبئة الحقول';
      setState(() {});
    }
  }

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
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView(
          padding: const EdgeInsets.all(24),
          children: [
            const SizedBox(height: 50),
            const QTitle(
              title: 'انشئ حسابك في قَطّة ',
            ),
            const SizedBox(height: 50),
            if (errorMessage.isNotEmpty) ...[
              Text(
                errorMessage,
                style: const TextStyle(color: QRed),
              ),
              const SizedBox(height: 12),
            ],
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
              onPressed: isValid,
            ),
          ],
        ),
      ),
    );
  }
}

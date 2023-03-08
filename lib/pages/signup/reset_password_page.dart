import 'package:flutter/material.dart';

import '../../components/q_button.dart';
import '../../components/q_text_field.dart';
import '../../components/q_title.dart';
import '../../constants/qcolors.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({super.key});

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  TextEditingController emailController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
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
          ),
        ),
        title: const Text(
          'إعادة ضبط كلمة المرور ',
          style: TextStyle(fontSize: 24),
        ),
        centerTitle: true,
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView(
          padding: const EdgeInsets.all(24),
          children: [
            const SizedBox(height: 50),
            const QTitle(
              title: 'أدخل بريدك الإلكتروني وسوف يصلك رابط لإعادة ضبط كلمة المرور',
            ),
            const SizedBox(height: 50),
            QTextField(
              name: 'البريد الإلكتروني',
              inputController: emailController,
              hint: 'ex@gmail.com',
            ),
            const SizedBox(height: 50),
            QButton(
              title: 'تغيير كلمة المرور ',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

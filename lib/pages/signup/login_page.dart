import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:qattah_project/components/q_button.dart';
import 'package:qattah_project/components/q_text_field.dart';
import 'package:qattah_project/components/q_title.dart';
import 'package:qattah_project/pages/general/navbar_page.dart';
import 'package:qattah_project/pages/signup/reset_password_page.dart';

import '../../constants/qcolors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  String errorMessage = '';
  Future signIn() async {
    User? user;
    String userId;
    try {
      UserCredential result = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
      user = result.user;
      userId = user!.uid;
    } catch (error) {
      switch (error.toString()) {
        case 'ERROR_INVALID_EMAIL':
          errorMessage = 'خطأ في البريد الإلكتروني أو كلمة السر';
          break;
        case 'ERROR_WRONG_PASSWORD':
          errorMessage = 'خطأ في البريد الإلكتروني أو كلمة السر';
          break;
        case 'ERROR_USER_NOT_FOUND':
          errorMessage = 'المستخدم غير موجود';
          break;
        case 'ERROR_USER_DISABLED':
          errorMessage = 'المستخدم الذي تحاول الوصول له تم ايقافه';
          break;
        case 'ERROR_TOO_MANY_REQUESTS':
          errorMessage = 'لقد حصل خطأ حاول مرة أخرى في وقت لاحق';
          break;
        case 'ERROR_OPERATION_NOT_ALLOWED':
          errorMessage = 'المستخدم الذي تدخله ليس لديه صلاحيات الدخول';
          break;
        default:
          errorMessage = 'خطأ في البريد الإلكتروني أو كلمة السر';
      }
      setState(() {});
    }
    if (errorMessage.isNotEmpty) {
      return Future.error(errorMessage);
    }
    return FirebaseFirestore.instance.collection('User').doc().get();
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
              title: ' الدخول',
              onPressed: () {
                signIn();
                if (errorMessage.isEmpty) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NavbarPage(),
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

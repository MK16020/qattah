import 'package:flutter/material.dart';
import 'package:qattah_project/constants/qcolors.dart';
import 'package:qattah_project/pages/signup/login_page.dart';
import 'package:qattah_project/pages/signup/first_register_page.dart';

class Welcome3 extends StatelessWidget {
  const Welcome3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/welcoming3.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const Positioned(
              top: 376,
              right: 24,
              child: Text(
                'سجّل و تابع فواتيرك و',
                style: TextStyle(color: Colors.white, fontSize: 40.0),
                textAlign: TextAlign.center,
              ),
            ),
            const Positioned(
              top: 452,
              right: 24,
              child: Text(
                'نفقاتك المشتركة',
                style: TextStyle(fontSize: 40.0, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
            Positioned(
              top: 552,
              right: 34,
              child: SizedBox(
                width: 190,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LoginPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    elevation: 6,
                    shadowColor: QDarkerGrey,
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                  ),
                  child: const Text('تسجيل الدخول', style: TextStyle(color: QMainPink, fontSize: 20)),
                ),
              ),
            ),
            Positioned(
              top: 652,
              right: 34,
              child: SizedBox(
                width: 190,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const FirstRegisterPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: QMainGreen,
                    elevation: 6,
                    shadowColor: QDarkerGrey,
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                  ),
                  child: const Text('إنشاء حساب', style: TextStyle(color: Colors.white, fontSize: 20)),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 207, 172, 172),
    );
  }
}

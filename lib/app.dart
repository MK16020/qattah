import 'package:flutter/material.dart';
import 'package:qattah_project/pages/login_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Scaffold(
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: LoginPage(),
        ),
      ),
      theme: ThemeData(fontFamily: 'AllGenders'),
      debugShowCheckedModeBanner: false,
    );
  }
}

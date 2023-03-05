import 'package:flutter/material.dart';
import 'package:qattah_project/pages/signup/second_register_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Scaffold(
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: SecondRegisterPage(),
        ),
      ),
      theme: ThemeData(fontFamily: 'AllGenders'),
      debugShowCheckedModeBanner: false,
    );
  }
}

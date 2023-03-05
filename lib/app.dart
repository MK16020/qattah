import 'package:flutter/material.dart';
import 'package:qattah_project/pages/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Scaffold(body: HomePage()),
      theme: ThemeData(fontFamily: 'AllGenders'),
      debugShowCheckedModeBanner: false,
    );
  }
}

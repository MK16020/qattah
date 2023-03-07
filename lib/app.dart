import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:qattah_project/pages/general/navbar_page.dart';
import 'package:qattah_project/pages/welcome/welcome_page.dart';
import 'package:theme_mode_builder/theme_mode_builder.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return ThemeModeBuilder(builder: (BuildContext context, ThemeMode themeMode) {
      return MaterialApp(
        home: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            return snapshot.hasData
                ? const Scaffold(body: Directionality(textDirection: TextDirection.rtl, child: NavbarPage()))
                : const WelcomePage();
          },
        ),
        theme: ThemeData(brightness: Brightness.light, fontFamily: 'AllGenders'),
        darkTheme: ThemeData(brightness: Brightness.dark, fontFamily: 'AllGenders'),
        themeMode: themeMode,
        debugShowCheckedModeBanner: false,
      );
    });
  }
}

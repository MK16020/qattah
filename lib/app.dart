import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:qattah_project/models/expense_model.dart';
import 'package:qattah_project/models/group_model.dart';
import 'package:qattah_project/models/user_model.dart';
import 'package:qattah_project/pages/general/navbar_page.dart';
import 'package:theme_mode_builder/theme_mode_builder.dart';

import 'components/dark_theme.dart';
import 'components/light_theme.dart';
import 'pages/group/full_groups_page.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => AppState();
}

class AppState extends State<App> {
  List<UserModel> userList = [];
  List<GroupModel> groupList = [];
  List<ExpenseModel> expenseList = [];

  @override
  void initState() {
    userMethod();
    groupMethod();
    expenseMethod();
    super.initState();
  }

  Future userMethod() async {
    await FirebaseFirestore.instance.collection('User').get().then((value) {
      final docs = value.docs;
      for (final doc in docs) {
        final data = doc.data();
        final userFromData = UserModel.fromMap(data);
        userList.add(userFromData);
      }
      UserModel.users = userList;
      setState(() {});
    });
  }

  Future groupMethod() async {
    await FirebaseFirestore.instance.collection('Group').get().then((value) {
      final docs = value.docs;
      for (final doc in docs) {
        final data = doc.data();
        final groupFromData = GroupModel.fromMap(data);
        groupList.add(groupFromData);
      }
      GroupModel.groups = groupList;

      setState(() {});
    });
  }

  Future expenseMethod() async {
    await FirebaseFirestore.instance.collection('Expense').get().then((value) {
      final docs = value.docs;
      for (final doc in docs) {
        final data = doc.data();
        final expenseFromData = ExpenseModel.fromMap(data);
        expenseList.add(expenseFromData);
      }
      ExpenseModel.expenses = expenseList;

      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return ThemeModeBuilder(builder: (BuildContext context, ThemeMode themeMode) {
      return MaterialApp(
        home: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            return snapshot.hasData
                ? const Scaffold(body: Directionality(textDirection: TextDirection.rtl, child: NavbarPage()))
                : const FullGroupsPage();
          },
        ),
        theme: lightThemeData(context),
        darkTheme: darkThemeData(context),
        themeMode: themeMode,
        debugShowCheckedModeBanner: false,
      );
    });
  }
}

import 'package:flutter/material.dart';
import 'package:qattah_project/constants/qcolors.dart';
import 'package:qattah_project/pages/activities_page.dart';
import 'package:qattah_project/pages/add_qattah_page.dart';
import 'package:qattah_project/pages/groups_page.dart';
import 'package:qattah_project/pages/members_page.dart';
import 'package:qattah_project/pages/settings_page.dart';

class NavbarPage extends StatefulWidget {
  const NavbarPage({super.key});

  @override
  State<NavbarPage> createState() => _NavbarPageState();
}

class _NavbarPageState extends State<NavbarPage> {
  final pages = [
    const MembersPage(),
    const GroupsPage(),
    AddQattahPage(),
    const ActivitiesPage(),
    const SettingsPage()
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'الأعضاء'),
          BottomNavigationBarItem(icon: Icon(Icons.people_alt_outlined), label: 'المجموعات'),
          BottomNavigationBarItem(icon: Icon(Icons.add_box_rounded), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.insert_chart_outlined_sharp), label: 'النشاط'),
          BottomNavigationBarItem(icon: Icon(Icons.settings_outlined), label: 'الاعدادات'),
        ],
        onTap: (newIndex) {
          currentIndex = newIndex;
          setState(() {});
        },
        currentIndex: currentIndex,
        elevation: 9,
        fixedColor: QMainGreen,
        backgroundColor: Colors.white,
        unselectedItemColor: QLightGrey,
        selectedIconTheme: const IconThemeData(color: QMainGreen),
        unselectedIconTheme: const IconThemeData(color: QLightGrey),
        showUnselectedLabels: true,
      ),
    );
  }
}

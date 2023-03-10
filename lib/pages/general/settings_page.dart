import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:qattah_project/models/user_model.dart';
import 'package:qattah_project/pages/general/account_page.dart';
import 'package:qattah_project/pages/welcome/welcome_page.dart';
import 'package:theme_mode_builder/theme_mode_builder.dart';

import '../../components/q_account_option.dart';
import '../../constants/qcolors.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({
    super.key,
  });

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  UserModel user = UserModel(id: '-', name: '-', imageUrl: '-');

  @override
  void initState() {
    super.initState();
    getUserInfo();
  }

  getUserInfo() async {
    FirebaseFirestore.instance
        .collection('User')
        .doc(FirebaseAuth.instance.currentUser?.uid)
        .snapshots()
        .listen((event) {
      final newUser = UserModel.fromMap(event.data() ?? {});
      setState(() {
        user = newUser;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('الاعدادات', style: TextStyle(fontSize: 24)),
        centerTitle: true,
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 16),
          children: [
            const SizedBox(width: 100),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AccountPage()),
                );
              },
              child: Row(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(100),
                      ),
                    ),
                    width: 120,
                    height: 120,
                    clipBehavior: Clip.hardEdge,
                    child: user.imageUrl == null
                        ? Container(
                            decoration: BoxDecoration(color: QLightGrey, borderRadius: BorderRadius.circular(100)),
                          )
                        : CachedNetworkImage(imageUrl: user.imageUrl, width: 120, height: 130, fit: BoxFit.cover),
                  ),
                  Expanded(
                    flex: 4,
                    child: ListTile(
                      title: Text(user.name),
                      // subtitle: const Text('Sara2@test.com'),
                      trailing: const Icon(Icons.keyboard_arrow_left_outlined),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 80),
            const QAccountOption(icon: Icon(Icons.notifications_on_outlined), title: 'الإشعارات'),
            const QAccountOption(icon: Icon(Icons.remove_red_eye_outlined), title: 'سياسة الخصوصية'),
            const QAccountOption(icon: Icon(Icons.phone_enabled_outlined), title: 'تواصل معنا'),
            const SizedBox(
              height: 50,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Text(
                //   'Current Mode: ${ThemeModeBuilderConfig.isDarkTheme() ? 'Dark' : 'Light'}',
                //   style: const TextStyle(
                //     fontSize: 25,
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),
                // const SizedBox(height: 20),
                // TextButton(
                //     onPressed: () async {
                //       await ThemeModeBuilderConfig.toggleTheme();
                //     },
                //     child: const Text('Toggle Mode')),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    TextButton.icon(
                      onPressed: ThemeModeBuilderConfig.isDarkTheme()
                          ? () async {
                              await ThemeModeBuilderConfig.toggleTheme();
                            }
                          : () async {
                              await ThemeModeBuilderConfig.toggleTheme();
                            },
                      icon: const Icon(
                        Icons.lightbulb_outline,
                        color: QLightPink,
                      ),
                      label: const Text(
                        'وضع النهار',
                        style: TextStyle(color: QMainPink),
                      ),
                    ),
                    TextButton.icon(
                      onPressed: ThemeModeBuilderConfig.isDarkTheme()
                          ? () async {
                              await ThemeModeBuilderConfig.toggleTheme();
                            }
                          : () async {
                              await ThemeModeBuilderConfig.toggleTheme();
                            },
                      icon: const Icon(
                        Icons.lightbulb,
                        color: QLightPink,
                      ),
                      label: const Text(
                        'الوضع الليلي',
                        style: TextStyle(color: QMainPink),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            TextButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const WelcomePage()));
              },
              child: const Text(
                'تسجيل الخروج',
                style: TextStyle(color: QLightestGreen, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

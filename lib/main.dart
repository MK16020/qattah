import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:theme_mode_builder/theme_mode_builder.dart';

import 'app.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ThemeModeBuilderConfig.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const App());
}

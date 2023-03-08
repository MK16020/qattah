import 'package:flutter/material.dart';

import '../constants/qcolors.dart';

ThemeData darkThemeData(BuildContext context) {
  return ThemeData(
    colorScheme: const ColorScheme(
        brightness: Brightness.dark,
        primary: Colors.white,
        onPrimary: Colors.white,
        secondary: QMainPink,
        onSecondary: QLightPink,
        error: QRed,
        onError: QRed,
        background: QBlack,
        onBackground: Colors.white,
        surface: QBlack,
        onSurface: Colors.white),
    fontFamily: 'AllGenders',
    appBarTheme: const AppBarTheme(elevation: 0.5),
    buttonTheme: Theme.of(context).buttonTheme.copyWith(colorScheme: const ColorScheme.dark()),
    textSelectionTheme: const TextSelectionThemeData(selectionColor: Colors.white),
  );
}

import 'package:flutter/material.dart';

import '../constants/qcolors.dart';

ThemeData lightThemeData(BuildContext context) {
  return ThemeData(
    canvasColor: Colors.white,
    colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: Colors.white,
        onPrimary: QMainGreen,
        secondary: QMainPink,
        onSecondary: QLightPink,
        error: QRed,
        onError: QRed,
        background: QMainGreen,
        onBackground: QBlack,
        surface: QBlack,
        onSurface: QBlack),
    fontFamily: 'AllGenders',
    appBarTheme: const AppBarTheme(elevation: 0.5),
    buttonTheme: Theme.of(context).buttonTheme.copyWith(colorScheme: const ColorScheme.dark()),
    textSelectionTheme: const TextSelectionThemeData(selectionColor: QMainGreen),
  );
}

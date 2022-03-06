import 'package:flutter/material.dart';
import 'package:barkey_blog/config/palette.dart';

final theme = ThemeData(
  backgroundColor: Palette.subColor,
  primaryColor: Palette.subColor,
  scaffoldBackgroundColor: Palette.mainColor,
  appBarTheme: const AppBarTheme(
      backgroundColor: Palette.subColor,
      // systemOverlayStyle: SystemUiOverlayStyle(),
      centerTitle: true),
  textTheme:
      const TextTheme(bodyText2: TextStyle(color: Palette.mainTextColor)),
  dialogTheme: const DialogTheme(
      backgroundColor: Palette.mainColor,
      titleTextStyle: TextStyle(color: Palette.mainTextColor, fontSize: 17),
      contentTextStyle: TextStyle(color: Palette.subTextColor, fontSize: 13)),
);

import 'package:flutter/material.dart';

class AppTheme {
  /// TextStyle According To [https://Material.io]
  static const TextStyle headline1 = const TextStyle(
        fontSize: 96,
        letterSpacing: -1.5,
        fontWeight: FontWeight.w300,
      ),
      headline2 = const TextStyle(
        fontSize: 60,
        letterSpacing: -0.5,
        fontWeight: FontWeight.w300,
      ),
      headline3 = const TextStyle(
        fontSize: 48,
      ),
      headline4 = const TextStyle(
        fontSize: 34,
        letterSpacing: 0.25,
      ),
      headline5 = const TextStyle(
        fontSize: 24,
      ),
      headline6 = const TextStyle(
        fontSize: 20,
        letterSpacing: 0.15,
        fontWeight: FontWeight.w500,
      ),
      bodyText1 = const TextStyle(
        fontSize: 16,
        letterSpacing: 0.5,
      ),
      bodyText2 = const TextStyle(
        fontSize: 14,
        letterSpacing: 0.25,
      ),
      subtitle1 = const TextStyle(
        fontSize: 16,
        letterSpacing: 0.15,
      ),
      subtitle2 = const TextStyle(
        fontSize: 14,
        letterSpacing: 0.1,
        fontWeight: FontWeight.w500,
      ),
      caption = const TextStyle(
        fontSize: 12,
        letterSpacing: 0.4,
      ),
      overline = const TextStyle(
        fontSize: 10,
        letterSpacing: 1.5,
      ),
      button = TextStyle(
        fontSize: 14,
        color: Colors.white,
        letterSpacing: 1.25,
        fontWeight: FontWeight.w500,
      );

  static const ColorScheme darkThemeDatePickerColorScheme = ColorScheme.dark(
    surface: darkThemePrimary,
    onSurface: darkTextColor,
  );

  static const ColorScheme lightThemeDatePickerColorScheme = ColorScheme.light(
    surface: lightThemePrimary,
    onSurface: lightTextColor,
  );

  static const lightTextColor = const Color.fromRGBO(31, 31, 31, 1);
  static const darkTextColor = const Color.fromRGBO(225, 225, 225, 1);
  static const lightThemePrimary = const Color.fromRGBO(219, 50, 70, 1);
  static const darkThemePrimary = const Color.fromRGBO(147, 0, 38, 1);

  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    errorColor: const Color(0xffb00020),
    scaffoldBackgroundColor: Color.fromRGBO(248, 249, 250, 1),
    appBarTheme: AppBarTheme(
      elevation: 0,
      color: lightThemePrimary,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    colorScheme: ColorScheme.light(
      primary: lightThemePrimary,
      secondary: lightThemePrimary,
      onSurface: const Color.fromRGBO(248, 249, 250, 1),
    ),
    snackBarTheme: SnackBarThemeData(
      backgroundColor: const Color.fromRGBO(31, 31, 31, 0.9),
      elevation: 2,
      contentTextStyle: bodyText1.copyWith(color: darkTextColor),
      behavior: SnackBarBehavior.floating,
      actionTextColor: lightThemePrimary,
    ),
    cardTheme: CardTheme(
      color: const Color(0xffffffff),
    ),
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
    indicatorColor: lightThemePrimary,
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12), topRight: Radius.circular(12)),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: lightTextColor,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: lightThemePrimary,
        ),
      ),
      labelStyle: TextStyle(
        color: lightTextColor,
      ),
    ),
    textTheme: TextTheme(
      headline1: headline1.copyWith(color: lightTextColor),
      headline2: headline2.copyWith(color: lightTextColor),
      headline3: headline3.copyWith(color: lightTextColor),
      headline4: headline4.copyWith(color: lightTextColor),
      headline5: headline5.copyWith(color: lightTextColor),
      headline6: headline6.copyWith(color: lightTextColor),
      bodyText1: bodyText1.copyWith(color: lightTextColor),
      bodyText2: bodyText2.copyWith(color: lightTextColor),
      subtitle1: subtitle1.copyWith(color: lightTextColor),
      subtitle2: subtitle2.copyWith(color: lightTextColor),
      caption: caption.copyWith(color: lightTextColor),
      overline: overline.copyWith(color: lightTextColor),
      button: button,
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    errorColor: const Color(0xffcf6679),
    scaffoldBackgroundColor: const Color(0xff121212),
    appBarTheme: AppBarTheme(
      elevation: 0,
      color: darkThemePrimary,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    colorScheme: ColorScheme.dark(
      primary: darkThemePrimary,
      secondary: darkThemePrimary,
      onSurface: const Color.fromRGBO(31, 31, 31, 1),
    ),
    snackBarTheme: SnackBarThemeData(
      backgroundColor: const Color.fromRGBO(31, 31, 31, 0.9),
      elevation: 2,
      contentTextStyle: bodyText1.copyWith(color: darkTextColor),
      behavior: SnackBarBehavior.floating,
      actionTextColor: darkThemePrimary,
    ),
    cardTheme: CardTheme(
      color: const Color.fromRGBO(31, 31, 31, 1),
    ),
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
    indicatorColor: darkThemePrimary,
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: const Color.fromRGBO(31, 31, 31, 1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12), topRight: Radius.circular(12)),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: darkTextColor,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: darkThemePrimary,
        ),
      ),
      labelStyle: TextStyle(
        color: darkTextColor,
      ),
    ),
    textTheme: TextTheme(
      headline1: headline1.copyWith(color: darkTextColor),
      headline2: headline2.copyWith(color: darkTextColor),
      headline3: headline3.copyWith(color: darkTextColor),
      headline4: headline4.copyWith(color: darkTextColor),
      headline5: headline5.copyWith(color: darkTextColor),
      headline6: headline6.copyWith(color: darkTextColor),
      bodyText1: bodyText1.copyWith(color: darkTextColor),
      bodyText2: bodyText2.copyWith(color: darkTextColor),
      subtitle1: subtitle1.copyWith(color: darkTextColor),
      subtitle2: subtitle2.copyWith(color: darkTextColor),
      caption: caption.copyWith(color: darkTextColor),
      overline: overline.copyWith(color: darkTextColor),
      button: button,
    ),
  );
}

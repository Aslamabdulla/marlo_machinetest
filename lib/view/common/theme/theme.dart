import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marlo/view/common/common.dart';

class SystemTheme {
  static final darkTheme = ThemeData(
    colorScheme: const ColorScheme.dark(),
    textTheme: const TextTheme(
      bodyText1: TextStyle(color: kWhite),
      bodyText2: TextStyle(color: kWhite),
    ),
    scaffoldBackgroundColor: darkThemeColorTextField,
    bottomNavigationBarTheme:
        const BottomNavigationBarThemeData(backgroundColor: darkThemeColor),
    appBarTheme: AppBarTheme(
        foregroundColor: kWhite,
        titleTextStyle:
            TextStyle(fontFamily: 'Heebo', fontSize: 34.sp, color: kWhite)),
    bottomAppBarColor: darkThemeColor,
  );
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    colorScheme: const ColorScheme.light(),
    appBarTheme: AppBarTheme(
        foregroundColor: kBlack,
        titleTextStyle:
            TextStyle(fontFamily: 'Heebo', fontSize: 34.sp, color: kBlack)),
  );
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:marlo/view/common/common.dart';
import 'package:marlo/view/common/theme/theme.dart';

import 'view/home_bottom_navigation_screen/home_bottom_navigation_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      designSize: const Size(360, 800),
      builder: (context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Teams',
        themeMode: ThemeMode.system,
        theme: SystemTheme.lightTheme,
        darkTheme: SystemTheme.darkTheme,
        home: const HomeBottomNavigationScreen(),
      ),
    );
  }
}

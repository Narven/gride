import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gride/constants/custom_theme.dart';
import 'package:gride/features/blueprint_code/presentation/blueprint_editor_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1024, 768),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Gride',
          theme: ThemeData(
            visualDensity: VisualDensity.adaptivePlatformDensity,
            fontFamily: CustomTheme.appDefaultTextStyle.fontFamily,
            primaryColor: CustomTheme.textColor,
          ),
          home: const BlueprintEditorScreen(),
        );
      },
    );
  }
}

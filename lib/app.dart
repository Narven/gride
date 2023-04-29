import 'package:flutter/material.dart';
import 'package:gride/constants/custom_theme.dart';
import 'package:gride/features/blueprint_code/presentation/blueprint_editor_screen.dart';
import 'package:sizer/sizer.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Gride',
          theme: ThemeData(
            fontFamily: CustomTheme.appDefaultTextStyle.fontFamily,
            primaryColor: CustomTheme.textColor,
          ),
          home: const BlueprintEditorScreen(),
        );
      },
    );
  }
}

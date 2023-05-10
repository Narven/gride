import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gride/constants/custom_theme.dart';
import 'package:gride/features/auth/presentation/signin_screen.dart';
import 'package:gride/features/blueprint_code/presentation/blueprint_editor_screen.dart';
import 'package:gride/routing/app_router.dart';
import 'package:sizer/sizer.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(goRouterProvider);

    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Gride',
          theme: ThemeData(
            fontFamily: CustomTheme.appDefaultTextStyle.fontFamily,
            primaryColor: CustomTheme.textColor,
          ),
          routerConfig: goRouter, // BlueprintEditorScreen(),
        );
      },
    );
  }
}

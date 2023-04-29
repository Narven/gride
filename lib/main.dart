import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gride/app.dart';

Future<void> main() async {
  await ScreenUtil.ensureScreenSize();

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

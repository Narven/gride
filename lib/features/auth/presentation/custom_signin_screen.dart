import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gride/constants/custom_theme.dart';
import 'package:gride/routing/app_router.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomSignInScreen extends StatefulWidget {
  const CustomSignInScreen({super.key});

  @override
  State<CustomSignInScreen> createState() => _CustomSignInScreenState();
}

class _CustomSignInScreenState extends State<CustomSignInScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final authProviders = [EmailAuthProvider()];

    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    CustomTheme.secondaryColor,
                    CustomTheme.mainColor,
                  ],
                ),
                // color: CustomTheme.mainColor,
              ),
            ),
          ),
          SizedBox(
            width: 40.w,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 7.w),
              child: Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(),
                        Text(
                          'GRIDE',
                          textAlign: TextAlign.center,
                          // style: GoogleFonts.rajdhani(
                          style: GoogleFonts.saira(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500,
                            color: CustomTheme.mainColor,
                          ),
                        ),
                        SizedBox(height: 2.h),
                        Flexible(
                          flex: 2,
                          child: SignInScreen(
                            providers: authProviders,
                            actions: [
                              AuthStateChangeAction<SignedIn>((context, state) {
                                context.goNamed(AppRoute.home.name);
                              }),
                              AuthStateChangeAction<SigningUp>(
                                  (context, state) {
                                context.goNamed(AppRoute.signIn.name);
                              }),
                            ],
                          ),
                        ),
                        const Spacer(),
                        Text(
                          '© 2023 Gride Ltd. All rights reserved.',
                          textAlign: TextAlign.center,
                          style: CustomTheme.appDefaultTextStyle.copyWith(
                            fontSize: 2.5.sp,
                          ),
                        ),
                        SizedBox(height: 1.h),
                        Text(
                          'All trademarks, logos, and brand names are the property of their respective owners.',
                          textAlign: TextAlign.center,
                          style: CustomTheme.appDefaultTextStyle.copyWith(
                            fontSize: 2.5.sp,
                          ),
                        ),
                        SizedBox(height: 1.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                              onPressed: () async {
                                final url =
                                    Uri.parse('https://gride.io/legal/terms');
                                if (!await launchUrl(url)) {
                                  throw Exception('Could not launch $url');
                                }
                              },
                              child: Text(
                                'Terms of Service',
                                textAlign: TextAlign.center,
                                style: CustomTheme.appDefaultTextStyle.copyWith(
                                  fontSize: 2.5.sp,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () async {
                                final url =
                                    Uri.parse('https://gride.io/legal/privacy');
                                if (!await launchUrl(url)) {
                                  throw Exception('Could not launch $url');
                                }
                              },
                              child: Text(
                                'Privacy Policy',
                                textAlign: TextAlign.center,
                                style: CustomTheme.appDefaultTextStyle.copyWith(
                                  fontSize: 2.5.sp,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.facebook),
                            ),
                          ],
                        ),
                        SizedBox(height: 1.h),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

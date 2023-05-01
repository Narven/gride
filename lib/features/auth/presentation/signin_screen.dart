import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gride/common/custom_password_field.dart';
import 'package:gride/common/custom_text_field.dart';
import 'package:gride/constants/custom_theme.dart';
import 'package:sizer/sizer.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
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
              padding: EdgeInsets.only(bottom: 2.h, left: 10.w, right: 10.w),
              child: Column(
                children: [
                  const Spacer(),
                  Text(
                    'GRIDE',
                    style: GoogleFonts.michroma(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: CustomTheme.mainColor,
                    ),
                  ),
                  SizedBox(height: 3.h),
                  Text(
                    'SIGN IN',
                    style: CustomTheme.appDefaultTextStyle.copyWith(
                      fontSize: 5.sp,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        CustomTextField(
                          label: 'Email',
                          controller: emailController,
                        ),
                        SizedBox(height: 1.h),
                        CustomPasswordField(
                          label: 'Password',
                          controller: passwordController,
                        ),
                        SizedBox(height: 4.h),
                        TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor: CustomTheme.hightlightColor,
                            backgroundColor: CustomTheme.secondaryColor,
                            elevation: 5,
                          ),
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Sign In'.toUpperCase(),
                              style: CustomTheme.appDefaultTextStyle.copyWith(
                                fontSize: 4.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 2.h),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forgot password?',
                            style: CustomTheme.appDefaultTextStyle.copyWith(
                              fontSize: 3.sp,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Text(
                    '© 2023 Gride Ltd. All rights reserved.',
                    style: CustomTheme.appDefaultTextStyle.copyWith(
                      fontSize: 2.5.sp,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {},
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
                        onPressed: () {},
                        child: Text(
                          'Privacy Policy',
                          textAlign: TextAlign.center,
                          style: CustomTheme.appDefaultTextStyle.copyWith(
                            fontSize: 2.5.sp,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
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

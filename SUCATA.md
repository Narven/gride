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








                  // Form(
                  //   child: Column(
                  //     crossAxisAlignment: CrossAxisAlignment.stretch,
                  //     children: [
                  //       CustomTextField(
                  //         label: 'Email',
                  //         controller: emailController,
                  //       ),
                  //       SizedBox(height: 1.h),
                  //       CustomPasswordField(
                  //         label: 'Password',
                  //         controller: passwordController,
                  //       ),
                  //       SizedBox(height: 4.h),
                  //       TextButton(
                  //         style: TextButton.styleFrom(
                  //           foregroundColor: CustomTheme.hightlightColor,
                  //           backgroundColor: CustomTheme.secondaryColor,
                  //           elevation: 5,
                  //         ),
                  //         onPressed: () {
                  //           context.go('/projects/project1');
                  //         },
                  //         child: Padding(
                  //           padding: const EdgeInsets.all(8.0),
                  //           child: Text(
                  //             'Sign In'.toUpperCase(),
                  //             style: CustomTheme.appDefaultTextStyle.copyWith(
                  //               fontSize: 4.sp,
                  //               fontWeight: FontWeight.w500,
                  //               color: Colors.white,
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //       SizedBox(height: 2.h),
                  //       TextButton(
                  //         onPressed: () {},
                  //         child: Text(
                  //           'Forgot password?',
                  //           style: CustomTheme.appDefaultTextStyle.copyWith(
                  //             fontSize: 3.sp,
                  //           ),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
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



```dart
showDialog(
                                  context: context,
                                  builder: (context) {
                                    return Center(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: CustomTheme.mainColor,
                                          borderRadius: const BorderRadius.all(
                                            Radius.circular(5),
                                          ),
                                          boxShadow: const [
                                            BoxShadow(
                                              color: Colors.black38,
                                              blurRadius: 3.0,
                                              offset: Offset(2.0, 3.0),
                                            ),
                                          ],
                                        ),
                                        width: 60.w,
                                        height: 50.h,
                                        child: Padding(
                                          padding: const EdgeInsets.all(20.0),
                                          child: SingleChildScrollView(
                                            child: DefaultTextStyle(
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 4.sp,
                                              ),
                                              child: const Text.rich(
                                                TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text:
                                                          'Last Updated: January 25, 2023',
                                                    ),
                                                    TextSpan(
                                                        text:
                                                            'exists to help build connections between people and make the world more open and inclusive. In short—to build a world where anyone can belong anywhere. We are a community built on trust. A fundamental part of earning that trust means being clear about how we use your information and protecting your human right to privacy.'),
                                                    TextSpan(
                                                        text:
                                                            'This Privacy Policy describes how Gride, Ltd. and its affiliates (“we,” “us,” or “Gride”), process personal information in relation to your use of the Gride Platform. Depending on where you live and what you are doing on the Gride Platform, the supplemental privacy pages listed below may apply to you. Please follow the links and review the supplemental information describing how we process personal information for those regions and services.'),
                                                    TextSpan(
                                                        text:
                                                            'This Privacy Policy describes how Gride, Ltd. and its affiliates (“we,” “us,” or “Gride”), process personal information in relation to your use of the Gride Platform. Depending on where you live and what you are doing on the Gride Platform, the supplemental privacy pages listed below may apply to you. Please follow the links and review the supplemental information describing how we process personal information for those regions and services.'),
                                                    TextSpan(
                                                        text:
                                                            'This Privacy Policy describes how Gride, Ltd. and its affiliates (“we,” “us,” or “Gride”), process personal information in relation to your use of the Gride Platform. Depending on where you live and what you are doing on the Gride Platform, the supplemental privacy pages listed below may apply to you. Please follow the links and review the supplemental information describing how we process personal information for those regions and services.'),
                                                    TextSpan(
                                                        text:
                                                            'This Privacy Policy describes how Gride, Ltd. and its affiliates (“we,” “us,” or “Gride”), process personal information in relation to your use of the Gride Platform. Depending on where you live and what you are doing on the Gride Platform, the supplemental privacy pages listed below may apply to you. Please follow the links and review the supplemental information describing how we process personal information for those regions and services.'),
                                                    TextSpan(
                                                        text:
                                                            'This Privacy Policy describes how Gride, Ltd. and its affiliates (“we,” “us,” or “Gride”), process personal information in relation to your use of the Gride Platform. Depending on where you live and what you are doing on the Gride Platform, the supplemental privacy pages listed below may apply to you. Please follow the links and review the supplemental information describing how we process personal information for those regions and services.'),
                                                    TextSpan(
                                                        text:
                                                            'This Privacy Policy describes how Gride, Ltd. and its affiliates (“we,” “us,” or “Gride”), process personal information in relation to your use of the Gride Platform. Depending on where you live and what you are doing on the Gride Platform, the supplemental privacy pages listed below may apply to you. Please follow the links and review the supplemental information describing how we process personal information for those regions and services.'),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                );
                                ```

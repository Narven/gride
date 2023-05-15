import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gride/constants/custom_theme.dart';
import 'package:gride/features/blueprint_code/widgets/panel.dart';
import 'package:gride/features/blueprint_code/widgets/panel_action_button.dart';
import 'package:sizer/sizer.dart';

class ResourceExplorer extends StatelessWidget {
  const ResourceExplorer({super.key});

  @override
  Widget build(BuildContext context) {
    return Panel(
      title: 'Resources',
      icon: Icons.account_tree_rounded,
      actions: [
        PanelActionButton(
          icon: Icons.add_box_rounded,
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return Align(
                  alignment: Alignment.topCenter,
                  child: SizedBox(
                    width: 400,
                    // height: 100,
                    child: Container(
                      decoration: BoxDecoration(
                        color: CustomTheme.mainColor,
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Card(
                        elevation: 0,
                        color: CustomTheme.mainColor,
                        child: Form(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(height: 1.h),
                              Flexible(
                                child: TextField(
                                  decoration: InputDecoration(
                                    labelText: 'New Resource',
                                    labelStyle: CustomTheme.appDefaultTextStyle,
                                    hintStyle: CustomTheme.appDefaultTextStyle,
                                    contentPadding: const EdgeInsets.symmetric(
                                      vertical: 0,
                                      horizontal: 10,
                                    ),
                                    filled: true,
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 1,
                                        color: CustomTheme.hightlightColor,
                                      ),
                                    ),
                                    enabledBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 0,
                                        color: Colors.transparent,
                                      ),
                                    ),
                                    border:
                                        const OutlineInputBorder(gapPadding: 0),
                                  ),
                                  style: TextStyle(
                                    color: CustomTheme.textColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          },
        )
      ],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 100,
            itemBuilder: (context, index) {
              return Text(
                '$index File',
                style: CustomTheme.appDefaultTextStyle.copyWith(
                  fontSize: kIsWeb ? 3.sp : 4.sp,
                  fontWeight: FontWeight.normal,
                ),
              );
            },
          )
        ],
      ),
    );
  }
}

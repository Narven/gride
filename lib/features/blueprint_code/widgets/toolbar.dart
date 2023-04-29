import 'package:flutter/material.dart';
import 'package:gride/constants/custom_theme.dart';
import 'package:gride/features/blueprint_code/widgets/toolbar_button.dart';
import 'package:sizer/sizer.dart';

class Toolbar extends StatelessWidget {
  const Toolbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 2.0,
        left: 4.0,
        right: 4.0,
      ),
      child: Container(
        // height: 300,
        decoration: BoxDecoration(
          color: CustomTheme.secondaryColor,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(3),
            bottomRight: Radius.circular(3),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.work_rounded,
                    color: CustomTheme.textColor,
                    size: 20,
                  ),
                  const SizedBox(width: 5),
                  Text(
                    'Project 1',
                    textAlign: TextAlign.left,
                    style: CustomTheme.appDefaultTextStyle.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 4.sp,
                    ),
                  ),
                  const Spacer(),
                  ToolbarButton(icon: Icons.width_normal, onPressed: () {}),
                  ToolbarButton(
                      icon: Icons.slideshow_rounded, onPressed: () {}),
                  VerticalDivider(thickness: 2.0, color: CustomTheme.textColor),
                  ToolbarButton(icon: Icons.account_circle, onPressed: () {}),
                  ToolbarButton(icon: Icons.settings_rounded, onPressed: () {}),
                  VerticalDivider(thickness: 2.0, color: CustomTheme.textColor),
                  ToolbarButton(icon: Icons.logout, onPressed: () {}),
                ],
              ),
              Divider(
                color: CustomTheme.secondaryColor,
                // thickness: 2.0,
                height: 2.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:gride/constants/custom_theme.dart';
import 'package:gride/features/blueprint_code/widgets/panel_action_button.dart';
import 'package:sizer/sizer.dart';

class Panel extends StatelessWidget {
  const Panel({
    super.key,
    this.title,
    this.child,
    this.actions = const [],
    this.icon,
  });

  final String? title;
  final Widget? child;
  final IconData? icon;
  final List<PanelActionButton> actions;

  final isLoading = false;

  @override
  Widget build(BuildContext context) {
    List<Widget> toolbarActions = [
      Icon(
        icon ?? Icons.square_rounded,
        size: 1.5.w,
        color: CustomTheme.textColor,
      ),
      SizedBox(width: 1.w),
      Text(
        title?.toUpperCase() ?? 'PANEL',
        textAlign: TextAlign.left,
        maxLines: 1,
        style: CustomTheme.appDefaultTextStyle.copyWith(
          fontSize: 2.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
      const Spacer(),
    ];

    if (actions.isNotEmpty) {
      for (final action in actions) {
        toolbarActions.add(Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2.0),
          child: action,
        ));
      }
    }

    toolbarActions.add(
      PanelActionButton(
        icon: Icons.web_asset,
        onPressed: () {},
      ),
    );

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Container(
          width: 230,
          decoration: BoxDecoration(
            color: CustomTheme.secondaryColor,
            borderRadius: const BorderRadius.all(
              Radius.circular(3),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: toolbarActions,
                ),
                Divider(
                  color: CustomTheme.hightlightColor,
                  thickness: 2.0,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: child ?? const SizedBox(),
                  ),
                ),
                Row(
                  children: [
                    // Text(
                    //   'Loading',
                    //   style: CustomTheme.appDefaultTextStyle.copyWith(
                    //     fontSize: 2.sp,
                    //   ),
                    // ),
                    const Spacer(),
                    isLoading
                        ? SizedBox(
                            width: 10,
                            height: 10,
                            child: CircularProgressIndicator(
                              strokeWidth: 0.5,
                              color: CustomTheme.hightlightColor,
                            ),
                          )
                        : const SizedBox(),
                  ],
                ),
                // Text(
                //   'loading',
                //   textAlign: TextAlign.right,
                //   style:
                //       CustomTheme.appDefaultTextStyle.copyWith(fontSize: 2.sp),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

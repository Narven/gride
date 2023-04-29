import 'package:flutter/material.dart';
import 'package:gride/constants/custom_theme.dart';
import 'package:sizer/sizer.dart';

class PanelActionButton extends StatelessWidget {
  const PanelActionButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Center(
        child: Icon(
          icon,
          size: 1.3.w,
          color: CustomTheme.textColor.withOpacity(.6),
        ),
      ),
    );
  }
}

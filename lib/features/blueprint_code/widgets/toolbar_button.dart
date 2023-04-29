import 'package:flutter/material.dart';
import 'package:gride/constants/custom_theme.dart';

class ToolbarButton extends StatelessWidget {
  const ToolbarButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.size = 24.0,
  });

  final IconData icon;
  final VoidCallback onPressed;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: SizedBox(
        height: size,
        width: size,
        child: IconButton(
          onPressed: onPressed,
          padding: EdgeInsets.zero,
          visualDensity: VisualDensity.compact,
          icon: Icon(
            icon,
            color: CustomTheme.textColor,
            size: size,
          ),
        ),
      ),
    );
  }
}

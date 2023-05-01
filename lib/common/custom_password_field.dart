import 'package:flutter/material.dart';
import 'package:gride/constants/custom_theme.dart';

class CustomPasswordField extends StatelessWidget {
  const CustomPasswordField({
    super.key,
    required this.label,
    required this.controller,
  });

  final String label;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: true,
      decoration: InputDecoration(
        labelText: label,
        floatingLabelStyle: TextStyle(color: CustomTheme.hightlightColor),
        border: CustomTheme.inputBorder(),
        enabledBorder: CustomTheme.inputBorder(),
        focusedBorder: CustomTheme.focusBorder(),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../../core/theme/color_manager.dart';
import '../../../../core/theme/text_styles.dart';

class PasswordTextFormField extends StatelessWidget {
  const PasswordTextFormField({
    super.key,
    required this.obscureText,
    required this.controller,
    this.onPressed,
  });
  final bool obscureText;
  final TextEditingController controller;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Password is required';
        }
        if (value.length < 8) {
          return 'Password must be at least 8 characters';
        }

        return null;
      },
      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: onPressed,
          icon: Icon(!obscureText ? Icons.visibility : Icons.visibility_off),
          color: ColorManager.lettersAndIcons,
        ),
        hintText: 'enter your password',
        filled: true,
        fillColor: ColorManager.lightGreen,
        border: customBorder(),
        enabledBorder: customBorder(),
        focusedBorder: customBorder(),
        hintStyle: TextStyles.paragraph(
          color: ColorManager.lettersAndIcons.withOpacity(0.5),
        ),
      ),
    );
  }

  OutlineInputBorder customBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: BorderSide.none,
    );
  }
}

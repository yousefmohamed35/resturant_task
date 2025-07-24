import 'package:flutter/material.dart';

import '../../../../core/theme/color_manager.dart';
import '../../../../core/theme/text_styles.dart';

class EmailTextFormField extends StatelessWidget {
  const EmailTextFormField({super.key, required this.controller});
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return 'Email is required';
        }
        if (!RegExp(
          r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
        ).hasMatch(value.trim())) {
          return 'Invalid email format';
        }
        return null;
      },
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'enter your email',

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

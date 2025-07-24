import 'package:flutter/material.dart';
import 'package:resturant_task/core/theme/color_manager.dart';
import 'package:resturant_task/core/theme/text_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onPressed, required this.text});
  final void Function()? onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 60),
        backgroundColor: ColorManager.lightGreen.withOpacity(0.2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: BorderSide(color: ColorManager.oceanBlueButton),
        ),
        //
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyles.title(color: ColorManager.lightGreen),
      ),
    );
  }
}

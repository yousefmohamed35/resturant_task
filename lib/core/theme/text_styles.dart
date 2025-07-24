import 'package:flutter/material.dart';

abstract class TextStyles {
  static TextStyle paragraph({required Color color, double? fontSize}) {
    return TextStyle(
      color: color,
      fontSize: fontSize ?? 14,
    );
  }
  static TextStyle title({required Color color, double? fontSize}) {
    return TextStyle(
      color: color,
      fontSize: fontSize ?? 20,
      fontWeight: FontWeight.bold
    );
  }
  static TextStyle subTitle({required Color color, double? fontSize}) {
    return TextStyle(
      color: color,
      fontSize: fontSize ?? 16,
      fontWeight: FontWeight.w500
    );
  }
  
}
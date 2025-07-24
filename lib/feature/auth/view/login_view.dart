import 'package:flutter/material.dart';
import 'package:resturant_task/core/theme/color_manager.dart';
import 'package:resturant_task/feature/auth/view/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: LoginViewBody(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:resturant_task/core/theme/color_manager.dart';
import 'package:resturant_task/core/widgets/custom_button.dart';
import 'package:resturant_task/feature/auth/view/widgets/email_text_from_field.dart';
import 'package:resturant_task/feature/auth/view/widgets/password_text_form_field.dart';
import '../../function/firebase_login.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Scaffold(
        backgroundColor: ColorManager.primary,
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              EmailTextFormField(controller: emailController),
              SizedBox(height: 20),
              PasswordTextFormField(
                obscureText: obscureText,
                controller: passwordController,
                onPressed: () => setState(() {
                  obscureText = !obscureText;
                }),
              ),
              SizedBox(height: 60),
              CustomButton(
                text: 'Login',
                onPressed: () async {
                  
                  if (!formKey.currentState!.validate()) return;

                  await login(
                    email: emailController.text.trim(),
                    password: passwordController.text.trim(),
                    context: context,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

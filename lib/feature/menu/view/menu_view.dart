import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:resturant_task/core/routes/routes.dart';
import 'package:resturant_task/core/widgets/custom_button.dart';

class MenuView extends StatelessWidget {
  const MenuView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomButton(text: 'Logout',onPressed: ()async{
          await FirebaseAuth.instance.signOut(

          );
          GoRouter.of(context).go(Routes.login);
        },),
      ),
    );
  }
}
import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../core/routes/routes.dart';

Future<void> login({
  required String email,
  required String password,
  required BuildContext context,
}) async {
  log(email);
  try {
    UserCredential userCredential = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
    log(userCredential.user!.uid.toString());
    GoRouter.of(context).go(Routes.menu);
  } on FirebaseAuthException catch (e) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text('check your email or password')));
  }
}

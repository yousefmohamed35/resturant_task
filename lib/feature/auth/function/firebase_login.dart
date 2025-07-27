import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
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
    final storage = await FlutterSecureStorage();
    await storage.write(key: 'uid', value: userCredential.user!.uid.toString());
    log(userCredential.user!.uid.toString());
    GoRouter.of(context).go(Routes.menu);
  } on FirebaseAuthException {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text('check your email or password')));
  }
}

import 'package:flutter/material.dart';
import 'package:resturant_task/core/routes/app_routes.dart';

class ResturantTask extends StatelessWidget {
  const ResturantTask({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRoutes.router,
    );
  }
}

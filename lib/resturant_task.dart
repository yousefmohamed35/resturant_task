import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resturant_task/core/routes/app_routes.dart';
import 'package:resturant_task/feature/menu/manager/menu_cubit.dart';

import 'feature/cart/presentation/manager/cart_cubit.dart';

class ResturantTask extends StatelessWidget {
  const ResturantTask({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => MenuCubit()..getMenu()),
        BlocProvider(create: (context) => CartCubit()),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: AppRoutes.router,
      ),
    );
  }
}

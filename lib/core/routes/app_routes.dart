import 'package:go_router/go_router.dart';
import 'package:resturant_task/core/routes/routes.dart';
import 'package:resturant_task/feature/menu/view/menu_view.dart';

import '../../feature/auth/view/login_view.dart';
import '../../feature/cart/presentation/view/cart_view.dart';

abstract class AppRoutes {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: Routes.login,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(path: Routes.menu, builder: (context, state) => const MenuView()),
       GoRoute(path: Routes.cart, builder: (context, state) => const CartView()),
    ],
  );
}

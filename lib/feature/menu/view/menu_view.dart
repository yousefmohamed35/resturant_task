import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:resturant_task/core/theme/color_manager.dart';
import '../../../core/routes/routes.dart';
import '../../../core/theme/text_styles.dart';
import 'widgets/menu_view_bloc_builder.dart';

class MenuView extends StatelessWidget {
  const MenuView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      appBar: AppBar(
        title: Text(
          'Menu',
          style: TextStyles.title(color: ColorManager.lightGreen),
        ),
        elevation: 10,
        backgroundColor: ColorManager.background,
        actions: [
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(Routes.cart);
            },
            icon: const Icon(
              Icons.shopping_cart,
              color: ColorManager.lightGreen,
            ),
          ),
        ],
      ),
      body: MenuViewBlocBuilder(),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../../core/theme/color_manager.dart';
import '../../../../core/theme/text_styles.dart';
import 'widgets/cart_view_body.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      appBar: AppBar(
        title: Text(
          'Cart',
          style: TextStyles.title(color: ColorManager.lightGreen),
        ),
        elevation: 10,
        backgroundColor: ColorManager.background,
        centerTitle: true,
        foregroundColor: ColorManager.lightGreen,
      ),
      body: CartViewBody(),
    );
  }
}

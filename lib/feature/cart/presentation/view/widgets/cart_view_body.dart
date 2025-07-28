import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../manager/cart_cubit.dart';
import 'card_item.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(builder: (context, state) {
      if (state is CartSuccess) {
        return ListView.builder(itemBuilder: (context, index) {
          final cartItem = state.cartItems[index];
    return CardItem(cartItem: cartItem);
        }, itemCount: state.cartItems.length,);
      } else {
        return const Center(child: CircularProgressIndicator());
      }
    });
  }
}
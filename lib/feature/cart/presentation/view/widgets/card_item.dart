import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resturant_task/core/models/cart_items.dart';
import '../../../../../core/theme/color_manager.dart';
import '../../../../../core/theme/text_styles.dart';
import '../../manager/cart_cubit.dart';

class CardItem extends StatelessWidget {
  const CardItem({super.key, required this.cartItem, required this.totalPrice});
  final CartItems cartItem;
  final num totalPrice ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
      child: Card(
        child: ListTile(
          leading: Image.network(cartItem.image, width: 50, height: 50),
          title: Text(
            cartItem.name,
            style: TextStyles.title(color: ColorManager.darkModeGreenBlack),
          ),
          subtitle: Text(
            'price: ${cartItem.price}\$ Quantity: ${cartItem.quantity}',
            style: TextStyles.subTitle(color: ColorManager.darkModeGreenBlack),
          ),
          trailing: IconButton(
            icon: const Icon(Icons.remove),
            color: ColorManager.background,
            onPressed: () {
              context.read<CartCubit>().decreaseItem(cartItem.id);
            },
          ),
        ),
      ),
    );
  }
}

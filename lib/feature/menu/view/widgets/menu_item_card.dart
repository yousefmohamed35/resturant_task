import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resturant_task/core/models/cart_items.dart';
import 'package:resturant_task/feature/cart/presentation/manager/cart_cubit.dart';
import '../../../../core/models/menu_items.dart';
import '../../../../core/theme/color_manager.dart';
import '../../../../core/theme/text_styles.dart';

class MenuItemCard extends StatelessWidget {
  const MenuItemCard({super.key, required this.menuItem});

  final MenuItems menuItem;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(menuItem.image, width: 50, height: 50),
        title: Text(
          menuItem.name,
          style: TextStyles.title(color: ColorManager.darkModeGreenBlack),
        ),
        subtitle: Text(
          '${menuItem.price}\$',
          style: TextStyles.subTitle(color: ColorManager.darkModeGreenBlack),
        ),
        trailing: IconButton(
          icon: const Icon(Icons.add),
          color: ColorManager.background,
          onPressed: () {
            context.read<CartCubit>().addItem(
              CartItems(
                id: menuItem.id,
                name: menuItem.name,
                image: menuItem.image,
                price: menuItem.price,
                quantity: 1,
              ),
            );
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('${menuItem.name} added to cart! ${menuItem.id}'),
                duration: const Duration(seconds: 1),
              ),
            );
          },
        ),
      ),
    );
  }
}

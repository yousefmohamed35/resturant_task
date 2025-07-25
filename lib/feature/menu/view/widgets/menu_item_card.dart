import 'package:flutter/material.dart';

import '../../../../core/models/menu_items.dart';
import '../../../../core/theme/color_manager.dart';

class MenuItemCard extends StatelessWidget {
  const MenuItemCard({
    super.key,
    required this.menuItem,
  });

  final MenuItems menuItem;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(menuItem.image, width: 50, height: 50),
        title: Text(menuItem.name),
        subtitle: Text(menuItem.price.toString()),
        trailing: IconButton(
          icon: const Icon(Icons.add),
          color: ColorManager.background,
          onPressed: () {},
        ),
      ),
    );
  }
}

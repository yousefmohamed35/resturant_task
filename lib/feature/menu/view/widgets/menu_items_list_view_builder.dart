import 'package:flutter/material.dart';
import 'package:resturant_task/core/models/menu_items.dart';
import 'menu_item_card.dart';

class MenuItemsListViewBuilder extends StatelessWidget {
  const MenuItemsListViewBuilder({super.key, required this.menuItems});
  final List<MenuItems> menuItems;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.builder(
        itemCount: menuItems.length,
        itemBuilder: (context, index) {
          final menuItem = menuItems[index];
          return MenuItemCard(menuItem: menuItem);
        },
      ),
    );
  }
}

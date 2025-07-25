import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resturant_task/core/theme/color_manager.dart';
import 'package:resturant_task/feature/menu/manager/menu_cubit.dart';
import '../../../core/theme/text_styles.dart';
import 'widgets/menu_items_list_view_builder.dart';

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
        centerTitle: true,
      ),
      body: BlocBuilder<MenuCubit, MenuState>(
        builder: (context, state) {
          if (state is MenuLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is MenuError) {
            return Center(child: Text(state.message));
          } else if (state is MenuSuccess) {
            return MenuItemsListViewBuilder(menuItems: state.menuItems);
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}

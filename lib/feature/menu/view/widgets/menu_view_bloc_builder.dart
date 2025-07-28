import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../manager/menu_cubit.dart';
import 'menu_items_list_view_builder.dart';

class MenuViewBlocBuilder extends StatelessWidget {
  const MenuViewBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MenuCubit, MenuState>(
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
    );
  }
}

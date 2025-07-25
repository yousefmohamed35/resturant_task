

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resturant_task/core/models/menu_items.dart';

import '../services/get_menu_items.dart';

part 'menu_state.dart';

class MenuCubit extends Cubit<MenuState> {
  final GetMenuItems getMenuItems = GetMenuItems();
  MenuCubit() : super(MenuInitial());

  Future<void> getMenu() async {
    emit(MenuLoading());
    try {
      final menuItems = await getMenuItems.getMenuItems();
      emit(MenuSuccess(menuItems: menuItems));
    } catch (e) {
      emit(MenuError(message: e.toString()));
    }
  }
}

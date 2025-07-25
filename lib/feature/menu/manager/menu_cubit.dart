

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resturant_task/core/models/menu_items.dart';

part 'menu_state.dart';

class MenuCubit extends Cubit<MenuState> {
  MenuCubit() : super(MenuInitial());
}

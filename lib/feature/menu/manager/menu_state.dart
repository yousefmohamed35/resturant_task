part of 'menu_cubit.dart';


abstract class MenuState {}

class MenuInitial extends MenuState {}
class MenuLoading extends MenuState {}
class MenuSuccess extends MenuState {
 final List<MenuItems> menuItems;

  MenuSuccess({required this.menuItems});
}
class MenuError extends MenuState {
  final String message;
  MenuError({required this.message});
}

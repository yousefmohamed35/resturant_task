part of 'cart_cubit.dart';

abstract class CartState {}

class CartInitial extends CartState {}

class CartSuccess extends CartState {
  final List<CartItems> cartItems;
  CartSuccess({required this.cartItems});
}

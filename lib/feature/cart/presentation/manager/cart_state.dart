part of 'cart_cubit.dart';

abstract class CartState {}

class CartInitial extends CartState {}

class CartSuccess extends CartState {
  final List<CartItems> cartItems;
  final num totalPrice;
  CartSuccess({required this.cartItems})
    : totalPrice = cartItems.fold(
        0,
        (previousValue, element) =>
            previousValue + element.price * element.quantity,
      );
}

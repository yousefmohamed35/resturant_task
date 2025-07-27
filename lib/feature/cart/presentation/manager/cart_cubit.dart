import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../../core/models/cart_items.dart';
part 'package:resturant_task/feature/cart/presentation/manager/cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());
  late Box<CartItems> cartItemsBox;
  Future<void> init() async {
    final userId = await FlutterSecureStorage().read(key: 'uid');
    cartItemsBox = await Hive.openBox<CartItems>('cart_$userId');
    emit(CartSuccess(cartItems: cartItemsBox.values.toList()));
  }

  void addItem(CartItems item) {
    final CartItems? existingItem = cartItemsBox.get(item.id);

    if (existingItem != null) {
      existingItem.quantity += item.quantity;
      existingItem.save();
    } else {
      cartItemsBox.put(item.id, item);
    }

    emit(CartSuccess(cartItems: cartItemsBox.values.toList()));
  }

  void removeItem(CartItems item) {
    cartItemsBox.delete(item.id);
    emit(CartSuccess(cartItems: cartItemsBox.values.toList()));
  }

  void clearCart() {
    cartItemsBox.clear();
    emit(CartSuccess(cartItems: cartItemsBox.values.toList()));
  }

  void decreaseItem(String id) {
    final item = cartItemsBox.get(id);
    if (item != null && item.quantity > 1) {
      item.quantity -= 1;
      item.save();
    } else {
      cartItemsBox.delete(id);
    }
    emit(CartSuccess(cartItems: cartItemsBox.values.toList()));
  }
  
}

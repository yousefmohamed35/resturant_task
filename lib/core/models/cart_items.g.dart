// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_items.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CartItemsAdapter extends TypeAdapter<CartItems> {
  @override
  final int typeId = 0;

  @override
  CartItems read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CartItems(
      id: fields[0] as String,
      name: fields[1] as String,
      image: fields[2] as String,
      price: fields[3] as num,
      quantity: fields[4] as int,
    );
  }

  @override
  void write(BinaryWriter writer, CartItems obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.image)
      ..writeByte(3)
      ..write(obj.price)
      ..writeByte(4)
      ..write(obj.quantity);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CartItemsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

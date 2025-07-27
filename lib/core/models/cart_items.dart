import 'package:hive/hive.dart';
part 'cart_items.g.dart';
@HiveType(typeId: 0)
class CartItems extends HiveObject{
  @HiveField(0)
 final String id;
  @HiveField(1)
 final String name;
  @HiveField(2)
final  String image;
  @HiveField(3)
final  String price;
  @HiveField(4)
  int quantity;

  CartItems({required this.id, required this.name, required this.image, required this.price, required this.quantity});
 
}
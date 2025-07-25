class MenuItems {
  final String id;
  final String name;
  final num price;
  final String image;

  MenuItems({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
  });
  factory MenuItems.fromFirestore({required Map<String, dynamic> doc,required String id}) =>
      MenuItems(
        id: id,
        name: doc['name'],
        price: doc['price'],
        image: doc['image'],
      );
}

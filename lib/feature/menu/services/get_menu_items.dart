import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:resturant_task/core/models/menu_items.dart';

class GetMenuItems {
  Future<List<MenuItems>> getMenuItems() async {
    QuerySnapshot snapshot = await FirebaseFirestore.instance.collection('menu_items').get();
    
    return snapshot.docs.map((doc) {
      final data = doc.data() as Map<String, dynamic>;
      return MenuItems.fromFirestore(doc: data, id: doc.id);
    }).toList();
  }
}

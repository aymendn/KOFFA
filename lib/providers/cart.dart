import 'package:flutter/foundation.dart';

class CartItem {
  final String title;
  int quantity;
  final double price;

  CartItem({
    required this.title,
    this.quantity = 1,
    required this.price,
  });
}


class Cart with ChangeNotifier {
  Map<String, CartItem> _items = {};

  Map<String, CartItem> get items {
    return {..._items};
  }

  int get itemCount {
    return _items.length;
  }

  double get totalAmount {
    double total = 0;
    for (var item in _items.values) {
      total += item.price * item.quantity;
    }
    return total;
  }

  void addItem({
    required String title,
    required double price,
  }) {
    if (_items.containsKey(title)) {
      _items[title]?.quantity++;
    } else {
      _items[title] = CartItem(
        title: title,
        price: price,
      );
    }
    notifyListeners();
  }

  void removeItem(String title) {
    _items.remove(title);
    notifyListeners();
  }

  void clear() {
    _items = {};
    notifyListeners();
  }
}

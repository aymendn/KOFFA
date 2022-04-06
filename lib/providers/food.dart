import 'package:flutter/foundation.dart';

class FoodItem with ChangeNotifier {
  final String name;
  final String image;
  final String category;
  final int price;
  int count;
  bool bought;

  FoodItem({
    required this.name,
    required this.image,
    required this.category,
    required this.price,
    this.count = 0,
    this.bought = false,
  });

  void addFood() {
    count++;
    notifyListeners();
  }

  void minusFood() {
    if (count > 0) {
      count--;
      notifyListeners();
    }
  }

  void toggleBought() {
    bought = !bought;
    notifyListeners();
  }
}

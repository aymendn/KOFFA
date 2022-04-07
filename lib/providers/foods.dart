import 'package:flutter/material.dart';

import 'food.dart';

class FoodList with ChangeNotifier {
  var _credits = 100;

  final List<FoodItem> _foods = [
    FoodItem(
      name: 'بازلاء',
      image: 'assets/food_icons/peas.png',
      category: 'grains',
      price: 5,
    ),
    FoodItem(
      name: 'فاصوليا',
      image: 'assets/food_icons/soy.png',
      category: 'grains',
      price: 5,
    ),
    FoodItem(
      name: 'حمص',
      image: 'assets/food_icons/chickpeas.png',
      category: 'grains',
      price: 6,
    ),
    FoodItem(
      name: 'عدس',
      image: 'assets/food_icons/lentils.png',
      category: 'grains',
      price: 5,
    ),
    FoodItem(
      name: 'بصل',
      image: 'assets/food_icons/onion.png',
      category: 'fruits',
      price: 3,
    ),
    FoodItem(
      name: 'طماطم',
      image: 'assets/food_icons/tomato.png',
      category: 'fruits',
      price: 5,
    ),
    FoodItem(
      name: 'جزر',
      image: 'assets/food_icons/carrot.png',
      category: 'fruits',
      price: 4,
    ),
    FoodItem(
      name: 'فلفل',
      image: 'assets/food_icons/bell-pepper.png',
      category: 'fruits',
      price: 3,
    ),
    FoodItem(
      name: 'دقيق',
      image: 'assets/food_icons/flour.png',
      category: 'others',
      price: 7,
    ),
    FoodItem(
      name: 'قهوة',
      image: 'assets/food_icons/coffee-beans.png',
      category: 'others',
      price: 7,
    ),
    FoodItem(
      name: 'حليب',
      image: 'assets/food_icons/milk.png',
      category: 'others',
      price: 3,
    ),
    FoodItem(
      name: 'بيض',
      image: 'assets/food_icons/egg.png',
      category: 'others',
      price: 3,
    ),
  ];

  List<FoodItem> get foods {
    return [..._foods];
  }

  List<FoodItem> get sortedFoods {
    var sorted = [..._foods];
    sorted.sort((a, b) => b.count.compareTo(a.count));
    return sorted;
  }

  List<FoodItem> foodListByCat(String category) {
    return _foods.where((foodItem) => foodItem.category == category).toList();
  }

  var initial = 100;

  int get credits {
    return _credits;
  }

  void updateCredits() {
    _credits = initial;
    var sum = 0;
    for (var food in foods) {
      sum += food.price * food.count;
    }
    _credits -= sum;
    notifyListeners();
  }

  bool get isItEmpty {
    for (var food in foods) {
      if (food.count != 0) {
        return false;
      }
    }
    return true;
  }

  void clear() {
    initial = _credits;
    for (var food in foods) {
      food.count = 0;
    }
    notifyListeners();
  }
}

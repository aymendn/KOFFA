import 'package:koffa/providers/food.dart';

import 'dart:math';

import 'package:koffa/providers/foods.dart';

String getPrefix(String name) {
  switch (name) {
    case 'حليب':
      return 'لتر';
    case 'بيض':
      return '';
    default:
      return 'كغ';
  }
}

List<FoodItem> generateRandomFoodList() {
  List<FoodItem> generatedList = FoodList().foods;

  for (var i = 0; i < 12; i++) {
    generatedList[i].count = Random().nextInt(8) + 1;
  }

  return generatedList..shuffle();
}

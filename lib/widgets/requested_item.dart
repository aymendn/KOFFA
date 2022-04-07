import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants.dart';
import '../providers/food.dart';
import 'custom_icon.dart';

import '/logic.dart';

class RequestedItem extends StatelessWidget {
  const RequestedItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final foodItem = Provider.of<FoodItem>(context, listen: false);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
      child: Row(
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Container(
                  height: 45,
                  width: double.infinity,
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    '${foodItem.count + Random().nextInt(15) + 1} ${getPrefix(foodItem.name)}',
                    style: const TextStyle(
                      color: kTextLightColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xffE8E8E8),
                  ),
                ),
                Container(
                  height: 45,
                  width: 120,
                  alignment: Alignment.center,
                  child: Text(
                    foodItem.name,
                    style: const TextStyle(
                        color: kTextLightColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(31, 121, 121, 121),
                        blurRadius: 2,
                        spreadRadius: 1,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20),
                    color: kWhiteColor,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 20),
          Consumer<FoodItem>(
            builder: (context, item, child) {
              return CustomIcon(
                textColor: item.bought ? kWhiteColor : kBlueColor,
                color: item.bought ? kBlueColor : kWhiteColor,
                isIcon: false,
                height: 45,
                width: 100,
                isShadow: true,
                text: foodItem.bought ? 'تم الشراء' : 'شراء',
                onTap: foodItem.toggleBought,
              );
            },
          ),
        ],
      ),
    );
  }
}

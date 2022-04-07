import 'dart:math';

import 'package:flutter/material.dart';

import '../constants.dart';
import '../providers/food.dart' as type;
import '../widgets/bold_title.dart';
import '../widgets/bottom_buttons.dart';
import '../widgets/custom_icon.dart';
import '/logic.dart';

class FamilyDetails extends StatelessWidget {
  const FamilyDetails({Key? key}) : super(key: key);

  static const routeName = '/family-details';

  @override
  Widget build(BuildContext context) {
    final index = ModalRoute.of(context)?.settings.arguments;
    final randomGeneratedList = generateRandomFoodList();
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              child: BoldTitle(
                text: 'إسم العائلة $index',
                color: kTextLightColor,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: Random().nextInt(11) + 1,
                itemBuilder: (BuildContext context, int index) {
                  return FoodItem(item: randomGeneratedList[index]);
                },
              ),
            ),
          ],
        ),
        bottomNavigationBar: Container(
          width: double.infinity,
          height: 90,
          decoration: const BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(35),
            ),
            boxShadow: [
              BoxShadow(
                  color: Color.fromARGB(29, 158, 158, 158),
                  blurRadius: 10,
                  spreadRadius: 5)
            ],
          ),
          child: BottomButtons(
            text: 'تأكيد التسليم',
            textButtonWidth: 150,
            vertpadd: 5,
            horpadd: 10,
            onTapBack: () {
              Navigator.of(context).pop();
            },
            onTapHome: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushReplacementNamed('/');
            },
            onTapText: () {
              showDialog(
                context: context,
                builder: (_) => AlertDialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  alignment: Alignment.center,
                  title: const Icon(
                    Icons.check_circle_rounded,
                    color: kBlueColor,
                    size: 60,
                  ),
                  content: const Text(
                    'تم تأكيد التسليم بنجاح',
                    style: kTextStyle,
                    textAlign: TextAlign.center,
                  ),
                  actions: [
                    CustomIcon(
                      height: 40,
                      width: 120,
                      isGradient: true,
                      isIcon: false,
                      text: 'إغلاق',
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class FoodItem extends StatelessWidget {
  const FoodItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  final type.FoodItem item;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: const Color.fromARGB(255, 236, 236, 236), width: 2)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            item.name,
            style: const TextStyle(
                fontSize: 16,
                color: Color(0xff858585),
                fontWeight: FontWeight.bold),
          ),
          Text(
            '${item.count} ${getPrefix(item.name)}',
            style: const TextStyle(
                fontSize: 16,
                color: Color(0xff858585),
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

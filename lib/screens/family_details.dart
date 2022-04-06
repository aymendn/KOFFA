import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/bold_title.dart';
import '../widgets/bottom_buttons.dart';

class FamilyDetails extends StatelessWidget {
  const FamilyDetails({Key? key}) : super(key: key);

  static const routeName = '/family-details';

  @override
  Widget build(BuildContext context) {
    final index = ModalRoute.of(context)?.settings.arguments;
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
                itemCount: 6,
                itemBuilder: (BuildContext context, int index) {
                  return FoodItem(index: index);
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
            isTextButton: false,
            textButtonWidth: 200,
            vertpadd: 5,
            horpadd: 10,
            onTapBack: () {
              Navigator.of(context).pop();
            },
            onTapHome: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushReplacementNamed('/');
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
    required this.index,
  }) : super(key: key);

  final int index;

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
            'المادة الغذائية ${index + 1}',
            style: const TextStyle(
                fontSize: 16,
                color: Color(0xff858585),
                fontWeight: FontWeight.bold),
          ),
          const Text(
            '- - -',
            style: TextStyle(
                fontSize: 16,
                color: Color(0xff858585),
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

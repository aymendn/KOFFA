import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/foods.dart';
import '../../widgets/bottom_buttons.dart';
import '../../widgets/custom_icon.dart';
import '../confirmation_screen.dart';
import '/constants.dart';
import 'components/category_row.dart';
import '../../widgets/top_header.dart';

class NeedyDemandScreen extends StatelessWidget {
  const NeedyDemandScreen({Key? key}) : super(key: key);

  static const routeName = '/demand-screen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            TopHeader(
              width: 80,
              text: 'المتبقي',
              title: 'طلب مكونات القفة',
              child: Consumer<FoodList>(
                builder: (context, foodList, child) {
                  return Text(
                    foodList.credits.toString(),
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child: ListView(
                children: const [
                  SizedBox(height: 20),
                  CategoryRow(
                    category: 'grains',
                    title: 'حبوب',
                  ),
                  CategoryRow(
                    category: 'fruits',
                    title: 'خضر و فواكه',
                  ),
                  CategoryRow(
                    category: 'others',
                    title: 'أخرى',
                  ),
                  SizedBox(height: 30),
                ],
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
            text: 'تأكيد الطلب',
            textButtonWidth: 135,
            vertpadd: 5,
            horpadd: 10,
            onTapBack: () {
              Navigator.of(context)
                  .pushReplacementNamed(ConfirmationScreen.routeName);
            },
            onTapHome: () {
              Navigator.of(context).pushReplacementNamed('/');
            },
            onTapText: () {
              final foods = Provider.of<FoodList>(context, listen: false);
              var empty = true;
              for (var food in foods.foods) {
                if (food.count != 0) {
                  empty = false;
                }
              }

              showDialog(
                context: context,
                builder: (_) => AlertDialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  alignment: Alignment.center,
                  title: empty
                      ? Icon(
                          Icons.shopping_bag_outlined,
                          color: Colors.red.shade400,
                          size: 60,
                        )
                      : const Icon(
                          Icons.check_circle_rounded,
                          color: kBlueColor,
                          size: 60,
                        ),
                  content: Text(
                    empty
                        ? 'القفة فارغة, الرجاءاختيار المكونات'
                        : ' تم تأكيد الطلب بنجاح.',
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
              Provider.of<FoodList>(context, listen: false).clear();
            },
          ),
        ),
      ),
    );
  }
}

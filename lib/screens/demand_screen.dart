import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants.dart';
import '../providers/foods.dart';
import '../widgets/bold_title.dart';
import '../widgets/bottom_buttons.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/requested_item.dart';
import 'families_screen.dart';

class DemandScreen extends StatelessWidget {
  const DemandScreen({Key? key}) : super(key: key);

  static const routeName = '/demand';

  @override
  Widget build(BuildContext context) {
    final sortedFoods =
        Provider.of<FoodList>(context, listen: false).sortedFoods;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const CustomAppBar(
              height: 90,
              child: Center(
                child: BoldTitle(
                  text: 'مجموع الطلبات',
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: sortedFoods.length,
                itemBuilder: (BuildContext context, int index) {
                  return ChangeNotifierProvider.value(
                    value: sortedFoods[index],
                    key: ValueKey(sortedFoods[index].name),
                    child: const RequestedItem(),
                  );
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
            isHomeButton: false,
            text: 'العائلات المستفيدة',
            textButtonWidth: 200,
            vertpadd: 5,
            horpadd: 10,
            onTapBack: () {
              Navigator.of(context).pushReplacementNamed('/');
            },
            onTapText: () {
              Navigator.of(context)
                  .pushReplacementNamed(FamiliesScreen.routeName);
            },
          ),
        ),
      ),
    );
  }
}

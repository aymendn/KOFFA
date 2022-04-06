import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../constants.dart';
import '../../../providers/food.dart';
import '../../../providers/foods.dart';
import '../../../widgets/bold_title.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    Key? key,
    // required this.itemCount,
    // required this.itemImage,
    // required this.itemName,
    // required this.add,
    // required this.minus,
  }) : super(key: key);

  // final int itemCount;
  // final String itemImage;
  // final String itemName;
  // final VoidCallback add;
  // final VoidCallback minus;

  @override
  Widget build(BuildContext context) {
    final food = Provider.of<FoodItem>(context, listen: false);
    final foods = Provider.of<FoodList>(context);
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.all(8),
          width: 95,
          height: 100,
          decoration: BoxDecoration(
            color: const Color(0xff8DD8DF),
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [
              BoxShadow(
                  color: Color.fromARGB(41, 158, 158, 158),
                  blurRadius: 2,
                  spreadRadius: 1)
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              buildCardItemButton(
                  onTap: () {
                    if (foods.credits > food.price) {
                      food.addFood();
                      foods.updateCredits();
                    }
                  },
                  icon: Icons.add_rounded),
              Container(
                margin: const EdgeInsets.only(bottom: 5),
                height: 20,
                width: 30,
                color: kWhiteColor,
                child: FittedBox(
                  child: Consumer<FoodItem>(
                    builder: (context, foodItem, child) {
                      return BoldTitle(
                        text: foodItem.count == 0
                            ? '--'
                            : foodItem.count.toString(),
                        color: kTextLightColor,
                      );
                    },
                  ),
                ),
              ),
              buildCardItemButton(
                  onTap: () {
                    food.minusFood();
                    foods.updateCredits();
                  },
                  icon: Icons.remove),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.all(8),
          width: 95,
          height: 70,
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [
              BoxShadow(
                  color: Color.fromARGB(48, 158, 158, 158),
                  blurRadius: 3,
                  spreadRadius: 1)
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(food.image, height: 30),
              BoldTitle(
                text: food.name,
                color: kTextLightColor,
                size: 16,
              ),
            ],
          ),
        ),
      ],
    );
  }

  InkWell buildCardItemButton({
    required VoidCallback onTap,
    required IconData icon,
  }) {
    return InkWell(
      onTap: onTap,
      child: Icon(
        icon,
        color: kWhiteColor,
        size: 30,
      ),
    );
  }
}

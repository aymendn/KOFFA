import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../constants.dart';
import '../../../providers/foods.dart';
import '../../../widgets/bold_title.dart';
import 'item_card.dart';

class CategoryRow extends StatelessWidget {
  const CategoryRow({
    Key? key,
    required this.category,
    required this.title,
  }) : super(key: key);

  final String category;
  final String title;

  @override
  Widget build(BuildContext context) {
    final foods = Provider.of<FoodList>(context, listen: false);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 25),
          child: BoldTitle(
            text: title,
            color: kTextLightColor,
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: foods
                .foodListByCat(category)
                .map(
                  (e) => ChangeNotifierProvider.value(
                    value: e,
                    child: ItemCard(
                      key: ValueKey(e.name),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}

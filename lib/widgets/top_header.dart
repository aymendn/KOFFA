import 'package:flutter/material.dart';

import 'bold_title.dart';
import 'custom_appbar.dart';
import '../screens/needy_demand_screen/components/credits.dart';

class TopHeader extends StatelessWidget {
  const TopHeader({
    Key? key,
    required this.text,
    required this.title,
    required this.child,
    required this.width,
  }) : super(key: key);

  final String text;
  final String title;
  final Widget child;
  final double width;

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
        child: Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Credits(
              text: text,
              child: child,
              width: width,
            ),
          ),
          BoldTitle(
            text: title,
          )
        ],
      ),
    ));
  }
}

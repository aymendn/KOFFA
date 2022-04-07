import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/custom_icon.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  static const routeName = '/about';

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      titlePadding: const EdgeInsets.all(25),
      contentPadding: const EdgeInsets.symmetric(horizontal: 15),
      actionsPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      actionsAlignment: MainAxisAlignment.end,
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/icons/info.png',
            width: 25,
          ),
          const SizedBox(width: 10),
          const Text(
            'حول التطبيق',
            style: kTitleStyle,
          ),
        ],
      ),
      content: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(height: 5),
            Text(
              kAppDesciption,
              style: kTextStyle,
            ),
          ],
        ),
      ),
      actions: [
        CustomIcon(
          image: 'assets/icons/back.png',
          height: 50,
          width: 60,
          isGradient: true,
          iconSize: 35,
          onTap: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/custom_background.dart';
import '../widgets/custom_icon.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  static const routeName = '/about';

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      image: 'assets/icons/info.png',
      child: SingleChildScrollView(
        child: Column(
          children: [
              const SizedBox(height: 25),
              const Text(
                'حول التطبيق',
                style: kTitleStyle,
              ),
              const SizedBox(height: 15),
            const Text(
              kAppDesciption,
              style: kTextStyle,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: CustomIcon(
                image: 'assets/icons/back.png',
                height: 50,
                width: 60,
                isGradient: true,
                iconSize: 35,
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

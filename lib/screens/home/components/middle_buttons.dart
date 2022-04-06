import 'package:flutter/material.dart';

import '../../../widgets/welcome_button.dart';
import '../../confirmation_screen.dart';
import '../../demand_screen.dart';

class MiddleButtons extends StatelessWidget {
  const MiddleButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 250,
      child: Stack(
        children: [
          Positioned(
            top: 68,
            right: 120,
            child: Image.asset(
              'assets/images/line.png',
            ),
          ),
          const Positioned(
            top: 0,
            right: 40,
            child: WelcomeButton(
              text: 'جمـعـية',
              route: DemandScreen.routeName,
            ),
          ),
          const Positioned(
            top: 130,
            right: 157,
            child: WelcomeButton(
              text: 'محتاج',
              route: ConfirmationScreen.routeName,
            ),
          ),
        ],
      ),
    );
  }
}

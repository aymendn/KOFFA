import 'package:flutter/material.dart';

import '../widgets/bold_title.dart';
import '../widgets/bottom_buttons.dart';
import '../widgets/clippers.dart';

import '/constants.dart';
import 'needy_demand_screen/needy_demand_screen.dart';

class ConfirmationScreen extends StatelessWidget {
  const ConfirmationScreen({Key? key}) : super(key: key);

  static const routeName = '/confirmation';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Align(alignment: Alignment.topLeft, child: TopLogo()),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 45, vertical: 5),
                child: Middle(),
              ),
              const Spacer(),
              BottomButtons(
                isHomeButton: false,
                textButtonWidth: 135,
                text: 'تأكيد',
                onTapBack: () {
                  Navigator.of(context).pushReplacementNamed('/');
                },
                onTapText: () {
                  Navigator.of(context)
                      .pushReplacementNamed(NeedyDemandScreen.routeName);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Middle extends StatelessWidget {
  const Middle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const BoldTitle(
          text: 'إمسح الكود',
          color: kTextLightColor,
        ),
        const Text(
          kQrConfirm,
          style: TextStyle(
            fontSize: 13,
            color: Color(0xff9B9B9B),
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
        Image.asset(
          'assets/images/scan-frame.png',
          width: double.infinity,
          height: 248,
          alignment: Alignment.topCenter,
        ),
      ],
    );
  }
}

class TopLogo extends StatelessWidget {
  const TopLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topLeft,
      children: const [
        ClipperSmallTop(),
        Positioned(
          top: 17,
          left: 30,
          child: BoldTitle(
            text: 'تأكيد الهوية',
          ),
        ),
      ],
    );
  }
}

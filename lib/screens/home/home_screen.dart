import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../widgets/custom_icon.dart';
import '../../widgets/welcome_button.dart';
import '../about_screen.dart';
import '../confirmation_screen.dart';
import '../demand_screen.dart';
import '../report_screen.dart';
import 'components/circle_logo.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: [
        const SizedBox(width: 15),
        IconButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (_) => const ReportScreen(),
            );
          },
          icon: Image.asset(
            'assets/icons/edit.png',
            width: 30,
            color: kWhiteColor,
          ),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (_) => const AboutScreen(),
            );
          },
          icon: Image.asset(
            'assets/icons/info.png',
            width: 30,
            color: kWhiteColor,
          ),
        ),
        const SizedBox(width: 15),
      ],
    );
    final netHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        appBar.preferredSize.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff074B54),
        appBar: appBar,
        body: SingleChildScrollView(
          child: SizedBox(
            height: netHeight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      width: double.infinity,
                      height: (netHeight) * 0.8,
                      decoration: const BoxDecoration(
                          color: kWhiteColor,
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(30))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          WelcomeButton(
                            text: 'جمـعـية',
                            route: DemandScreen.routeName,
                          ),
                          SizedBox(height: 25),
                          WelcomeButton(
                            text: 'محتاج',
                            route: ConfirmationScreen.routeName,
                          ),
                        ],
                      ),
                    ),
                    const Positioned(
                      child: CircleLogo(),
                      top: -90,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: const CustomIcon(
          height: 62,
          width: 72,
          isShadow: true,
          image: 'assets/icons/logout.png',
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../widgets/custom_icon.dart';
import '../about_screen.dart';
import '../report_screen.dart';
import 'components/middle_buttons.dart';
import 'components/top_logo.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const Expanded(flex: 3, child: TopLogo()),
            const Expanded(flex: 2, child: MiddleButtons()),
            SizedBox(
              width: double.infinity,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Image.asset(
                    'assets/images/clippersmall.png',
                    width: 200,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        CustomIcon(
                          image: 'assets/icons/info.png',
                          height: 60,
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(AboutScreen.routeName);
                          },
                        ),
                        CustomIcon(
                          image: 'assets/icons/edit.png',
                          height: 60,
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(ReportScreen.routeName);
                          },
                        ),
                        const Spacer(),
                        CustomIcon(
                          image: 'assets/icons/logout-white.png',
                          height: 60,
                          isGradient: true,
                          onTap: () {
                            SystemChannels.platform
                                .invokeMethod('SystemNavigator.pop');
                          },
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../widgets/clippers.dart';

class TopLogo extends StatelessWidget {
  const TopLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.topLeft,
      child: Stack(
        children: [
          const ClipperBig(),
          Positioned(
            top: 40,
            left: 15,
            child: Image.asset('assets/images/logo.png', width: 200),
          ),
        ],
      ),
    );
  }
}

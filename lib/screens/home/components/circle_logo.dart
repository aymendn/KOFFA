import 'package:flutter/material.dart';

class CircleLogo extends StatelessWidget {
  const CircleLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 90,
      backgroundColor: const Color(0xff3C9EAB),
      child: Image.asset('assets/images/logo-tr.png', width: 150),
    );
  }
}

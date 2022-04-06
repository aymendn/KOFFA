import 'package:flutter/material.dart';

import '../constants.dart';

class BoldTitle extends StatelessWidget {
  const BoldTitle({
    Key? key,
    required this.text,
    this.size = 27,
    this.color = kWhiteColor,
  }) : super(key: key);

  final String text;
  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        fontWeight: FontWeight.bold,
        color: color,
      ),
    );
  }
}

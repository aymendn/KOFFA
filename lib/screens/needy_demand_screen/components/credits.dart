import 'package:flutter/material.dart';

import '../../../constants.dart';

class Credits extends StatelessWidget {
  const Credits({
    Key? key,
    required this.text,
    required this.child,
    required this.width,
  }) : super(key: key);

  final String text;
  final Widget child;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          height: 36,
          width: width + 80,
          padding: const EdgeInsets.only(left: 5),
          child: child,
          decoration: BoxDecoration(
              color: kWhiteColor,
              borderRadius: BorderRadius.circular(16),
              boxShadow: const [
                BoxShadow(color: Colors.grey, blurRadius: 1, spreadRadius: 1)
              ]),
        ),
        Container(
          height: 36,
          width: width,
          alignment: Alignment.center,
          child: Text(
            text,
            style: const TextStyle(
              color: kWhiteColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          decoration: BoxDecoration(
            color: kPrimaryColorDarker,
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ],
    );
  }
}

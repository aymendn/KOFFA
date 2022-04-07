import 'package:flutter/material.dart';

import 'custom_icon.dart';

class CustomBackground extends StatelessWidget {
  const CustomBackground({
    Key? key,
    required this.image,
    required this.child,
  }) : super(key: key);

  final String image;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
            height: double.infinity,
            width: double.infinity,
            padding: const EdgeInsets.all(15),
            margin:
                const EdgeInsets.only(right: 20, left: 20, bottom: 20, top: 70),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromARGB(31, 121, 121, 121),
                  offset: Offset(3, 2),
                  blurRadius: 10,
                  spreadRadius: 3,
                ),
              ],
            ),
            child: child),
        Positioned(
          top: 40,
          right: 35,
          child: CustomIcon(
            image: image,
            height: 50,
            width: 80,
            isShadow: true,
          ),
        )
      ],
    );
  }
}

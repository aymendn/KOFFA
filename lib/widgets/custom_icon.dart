import 'package:flutter/material.dart';

import '../constants.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    Key? key,
    this.image,
    this.isGradient = false,
    this.isShadow = false,
    required this.height,
    this.width,
    this.onTap,
    this.iconSize = 25,
    this.isIcon = true,
    this.text,
    this.textColor = kWhiteColor,
    this.color = kWhiteColor,
  }) : super(key: key);

  final String? image;
  final bool isGradient;
  final bool isShadow;
  final double height;
  final double? width;
  final VoidCallback? onTap;
  final double iconSize;
  final bool isIcon;
  final String? text;
  final Color textColor;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(5),
        height: height,
        width: width ?? height,
        padding: const EdgeInsets.all(2),
        child: Center(
          child: isIcon
              ? Image.asset(
                  image ?? '',
                  width: iconSize,
                  height: iconSize,
                )
              : Text(
                  text ?? '',
                  style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: isGradient ? kButtonColor : color,
          boxShadow: isShadow
              ? const [
                  BoxShadow(
                    color: Color.fromARGB(31, 121, 121, 121),
                    blurRadius: 2,
                    spreadRadius: 1,
                  ),
                ]
              : null,
        ),
      ),
    );
  }
}

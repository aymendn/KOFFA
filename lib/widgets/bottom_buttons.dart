import 'package:flutter/material.dart';

import 'custom_icon.dart';

class BottomButtons extends StatelessWidget {
  const BottomButtons(
      {Key? key,
      this.isTextButton = true,
      this.isHomeButton = true,
      this.text = '',
      required this.onTapBack,
      this.onTapText,
      this.onTapHome,
      this.textButtonWidth = 55,
      this.horpadd = 35,
      this.vertpadd = 15})
      : super(key: key);

  final bool isTextButton;
  final bool isHomeButton;
  final String text;
  final VoidCallback onTapBack;
  final VoidCallback? onTapText;
  final VoidCallback? onTapHome;
  final double textButtonWidth;
  final double horpadd;
  final double vertpadd;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horpadd, vertical: vertpadd),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (isTextButton)
            CustomIcon(
              height: 55,
              width: textButtonWidth,
              text: text,
              isGradient: true,
              isIcon: false,
              onTap: onTapText,
            ),
          if (isTextButton) const Spacer(),
          if (isHomeButton)
            CustomIcon(
              height: 55,
              isGradient: true,
              image: 'assets/icons/home.png',
              onTap: onTapHome,
            ),
          if (!isTextButton) const SizedBox(width: 35),
          CustomIcon(
            height: 55,
            width: 70,
            isGradient: true,
            image: 'assets/icons/back.png',
            onTap: onTapBack,
            iconSize: 35,
          ),
        ],
      ),
    );
  }
}

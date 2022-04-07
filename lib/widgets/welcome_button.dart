import 'package:flutter/material.dart';

import 'package:koffa/constants.dart';

class WelcomeButton extends StatelessWidget {
  const WelcomeButton({
    Key? key,
    required this.text,
    required this.route,
  }) : super(key: key);

  final String text;
  final String route;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).pushReplacementNamed(route);
      },
      child: Text(text),
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(210, 55),
        primary: kWhiteColor,
        onPrimary: kTextLightColor,
        elevation: 5,
        textStyle: const TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
          fontFamily: 'Cairo',
        ),
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 6),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
      ),
    );
  }
}

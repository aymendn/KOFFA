import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/custom_icon.dart';

class ReportScreen extends StatelessWidget {
  const ReportScreen({Key? key}) : super(key: key);

  static const routeName = '/report';

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      titlePadding: const EdgeInsets.all(25),
      contentPadding: const EdgeInsets.symmetric(horizontal: 15),
      actionsPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      actionsAlignment: MainAxisAlignment.end,
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/icons/edit.png',
            width: 25,
          ),
          const SizedBox(width: 10),
          const Text(
            'تعليق أو إبلاغ',
            style: kTitleStyle,
          ),
        ],
      ),
      content: SizedBox(
        width: 700,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TextLabel(text: 'البريد الإلكتروني'),
              TextField(
                style: const TextStyle(height: 1.2),
                textDirection: TextDirection.ltr,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(17),
                  ),
                  isDense: true,
                  hintText: 'example@mail.com',
                  hintTextDirection: TextDirection.ltr,
                  hintStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Cairo',
                    color: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const TextLabel(text: 'تعليق أو إبلاغ'),
              TextField(
                textAlign: TextAlign.start,
                maxLines: 12,
                style: const TextStyle(height: 1.2),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(17),
                  ),
                  hintText: 'أدخل نص',
                  hintStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Cairo',
                    color: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
      actions: [
        CustomIcon(
          isIcon: false,
          height: 55,
          width: 135,
          isGradient: true,
          text: 'إرسال',
          onTap: () {},
        ),
        CustomIcon(
          iconSize: 35,
          image: 'assets/icons/back.png',
          isGradient: true,
          height: 55,
          width: 70,
          onTap: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}

class TextLabel extends StatelessWidget {
  const TextLabel({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: kTextLightColor,
          fontFamily: 'Cairo',
        ),
      ),
    );
  }
}

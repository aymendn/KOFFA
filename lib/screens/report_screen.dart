import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/custom_background.dart';
import '../widgets/custom_icon.dart';

class ReportScreen extends StatelessWidget {
  const ReportScreen({Key? key}) : super(key: key);

  static const routeName = '/report';

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      image: 'assets/icons/edit.png',
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 25),
            const Text(
              'تعليق أو إبلاغ عن مشكلة',
              style: kTitleStyle,
            ),
            const SizedBox(height: 15),
            Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TextLabel(text: 'البريد الإلكتروني'),
                  TextFormField(
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
                  TextFormField(
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
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
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/bottom_buttons.dart';
import '../widgets/top_header.dart';
import 'demand_screen.dart';
import 'family_details.dart';

class FamiliesScreen extends StatelessWidget {
  const FamiliesScreen({Key? key}) : super(key: key);

  static const routeName = '/families';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const TopHeader(
              width: 130,
              text: 'العائلات المتبقية',
              title: 'العائلات المستفيدة',
              child: Text(
                '14',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 15,
                itemBuilder: (BuildContext context, int index) {
                  return index == 0
                      ? const SizedBox(height: 20)
                      : Family(index: index, onTap: (){
                        Navigator.of(context).pushNamed(FamilyDetails.routeName, arguments: index);
                      },);
                },
              ),
            ),
          ],
        ),
        bottomNavigationBar: Container(
          width: double.infinity,
          height: 90,
          decoration: const BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(35),
            ),
            boxShadow: [
              BoxShadow(
                  color: Color.fromARGB(29, 158, 158, 158),
                  blurRadius: 10,
                  spreadRadius: 5)
            ],
          ),
          child: BottomButtons(
            isTextButton: false,
            textButtonWidth: 200,
            vertpadd: 5,
            horpadd: 10,
            onTapBack: () {
              Navigator.of(context)
                  .pushReplacementNamed(DemandScreen.routeName);
            },
            onTapHome: () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
        ),
      ),
    );
  }
}

class Family extends StatelessWidget {
  const Family({Key? key, required this.index, required this.onTap}) : super(key: key);

  final int index;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
                color: const Color.fromARGB(255, 236, 236, 236), width: 2)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'إسم العائلة $index',
              style: const TextStyle(
                  fontSize: 16,
                  color: Color(0xff858585),
                  fontWeight: FontWeight.bold),
            ),
            const Icon(
              Icons.arrow_forward_rounded,
              color: Color(0xff858585),
              size: 25,
            ),
          ],
        ),
      ),
    );
  }
}

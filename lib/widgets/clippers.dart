import 'package:flutter/material.dart';

class ClipperBig extends StatelessWidget {
  const ClipperBig({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/clipperbig.png');
  }
}

class ClipperSmall extends StatelessWidget {
  const ClipperSmall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/clippersmall.png',
      width: 200,
    );
  }
}

class ClipperSmallTop extends StatelessWidget {
  const ClipperSmallTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/clippersmalltop.png',
      width: 280,
    );
  }
}




// ClipShadowPath(
//       shadow: const BoxShadow(
//         color: Color.fromARGB(31, 121, 121, 121),
//         offset: Offset(3, 2),
//         blurRadius: 10,
//         spreadRadius: 3,
//       ),
//       clipper: BigClipper(),
//       child: Container(
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             colors: [kPrimaryColorDark, kPrimaryColorLight],
//           ),
//         ),
//       ),
//     )
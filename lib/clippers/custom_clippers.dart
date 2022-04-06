import 'package:flutter/material.dart';

class BigClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 414;
    final double _yScaling = size.height / 896;
    path.lineTo(229.351 * _xScaling, 114.221 * _yScaling);
    path.cubicTo(
      179.68 * _xScaling,
      25.6509 * _yScaling,
      278.254 * _xScaling,
      1.35556 * _yScaling,
      334 * _xScaling,
      1.20179 * _yScaling,
    );
    path.cubicTo(
      334 * _xScaling,
      1.20179 * _yScaling,
      -4.98426 * _xScaling,
      -56 * _yScaling,
      -4.98426 * _xScaling,
      -56 * _yScaling,
    );
    path.cubicTo(
      -4.98426 * _xScaling,
      -56 * _yScaling,
      -16 * _xScaling,
      220.322 * _yScaling,
      -16 * _xScaling,
      220.322 * _yScaling,
    );
    path.cubicTo(
      -11.6605 * _xScaling,
      226.472 * _yScaling,
      10.3497 * _xScaling,
      241.449 * _yScaling,
      38.0773 * _xScaling,
      247.077 * _yScaling,
    );
    path.cubicTo(
      67.6195 * _xScaling,
      253.074 * _yScaling,
      76.1316 * _xScaling,
      253.074 * _yScaling,
      119.694 * _xScaling,
      249.845 * _yScaling,
    );
    path.cubicTo(
      187.29 * _xScaling,
      238.774 * _yScaling,
      279.021 * _xScaling,
      202.792 * _yScaling,
      229.351 * _xScaling,
      114.221 * _yScaling,
    );
    path.cubicTo(
      229.351 * _xScaling,
      114.221 * _yScaling,
      229.351 * _xScaling,
      114.221 * _yScaling,
      229.351 * _xScaling,
      114.221 * _yScaling,
    );
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    throw UnimplementedError();
  }
}

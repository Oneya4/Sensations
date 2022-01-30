import 'package:flutter/cupertino.dart';

class ThirdClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double width = size.width;
    double height = size.height;
    Path path = Path();

    path.lineTo(0, height / height - 8);
    path.cubicTo(width / 7, 1.5 * (height / 4), 5.5 * (width / 4),
        height / height, width, height / .95);
    path.lineTo(0, height);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

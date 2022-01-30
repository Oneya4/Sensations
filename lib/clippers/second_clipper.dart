import 'package:flutter/cupertino.dart';

class SecondClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double width = size.width;
    double height = size.height;
    Path path = Path();

    path.lineTo(0, height / height - 8);
    path.cubicTo(width / 6, 1.46 * (height / 4), 5.5 * (width / 4),
        height / 6.8, width, height);
    path.lineTo(0, height);

    path.lineTo(0, height / 1.55);
    path.cubicTo(width / 10, 2 * (height / 2.3), 2.8 * (width / 2.5),
        height / 1.1, width, height * 1.2);
    path.lineTo(width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

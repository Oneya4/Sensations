import 'package:flutter/cupertino.dart';

class FirstClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double width = size.width;
    double height = size.height;
    Path path = Path();

    path.lineTo(0, height / 1.55);
    path.cubicTo(width / 10, 2 * (height / 2.3), 2.8 * (width / 2.5),
        height / 1.2, width, height * 1.1);
    path.lineTo(width, 0);

    // path.lineTo(0, height);
    // Offset curvePoint1 = Offset(width, height * 0.825);
    // Offset centerPoint1 = Offset(width * 0.25, height * 0.825);
    // path.quadraticBezierTo(
    //     curvePoint1.dx, curvePoint1.dx, centerPoint1.dx, centerPoint1.dy);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

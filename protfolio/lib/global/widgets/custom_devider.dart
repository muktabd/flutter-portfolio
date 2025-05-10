import 'package:flutter/material.dart';

import '../constants/color_resources.dart';

class CustomDivider extends StatelessWidget {
  final double? thikness;
  final double? width;
  final double? height;
  final Color? color;
  const CustomDivider({
    super.key,
    this.width,
    this.thikness,
    this.height,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? MediaQuery.of(context).size.width,
      child: Divider(
        thickness: thikness ?? 0.5,
        height: height ?? 1.0,
        color: color ?? ColorRes.grey,
      ),
    );
  }
}

class CustomDottedDivider extends StatelessWidget {
  final double? thickness;
  final double? width;
  final double? height;
  final Color? color;

  const CustomDottedDivider({
    super.key,
    this.thickness,
    this.width,
    this.height,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? MediaQuery.of(context).size.width,
      height: height ?? (thickness ?? 1.0),
      child: CustomPaint(
        painter: DottedLinePainter(
          thickness: thickness,
          color: color,
        ),
      ),
    );
  }
}

class DottedLinePainter extends CustomPainter {
  final double? thickness;
  final Color? color;

  DottedLinePainter({this.thickness, this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color ?? Colors.grey
      ..strokeWidth = thickness ?? 1.0
      ..style = PaintingStyle.stroke;

    double dashWidth = 4.0;
    double dashSpace = 2.0;
    double startX = 0.0;

    while (startX < size.width) {
      canvas.drawLine(
        Offset(startX, 0.0),
        Offset(startX + dashWidth, 0.0),
        paint,
      );
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class CustomDividerVertical extends StatelessWidget {
  final double? height;
  const CustomDividerVertical({super.key, this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? MediaQuery.of(context).size.height * 0.1,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: VerticalDivider(
          indent: 2.0,
          endIndent: 5.0,
          width: 5,
          thickness: 2,
          color: Colors.deepOrange,
        ),
      ),
    );
  }
}

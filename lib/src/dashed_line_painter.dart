import 'package:flutter/material.dart';

class DashedLinePainter extends CustomPainter {
  final Axis axis;
  final double dashHeight, dashWidth, dashSpace, strokeWidth;
  final Color dashColor;

  const DashedLinePainter(
      {required this.axis,
      required this.dashHeight,
      required this.dashWidth,
      required this.dashSpace,
      required this.strokeWidth,
      required this.dashColor});

  @override
  void paint(Canvas canvas, Size size) {
    if (axis == Axis.vertical) {
      double startY = 0;
      final paint = Paint()
        ..color = dashColor
        ..strokeWidth = strokeWidth;
      while (startY < size.height) {
        canvas.drawLine(
            Offset(0, startY), Offset(0, startY + dashHeight), paint);
        startY += dashHeight + dashSpace;
      }
    } else {
      double startX = 0;
      final paint = Paint()
        ..color = dashColor
        ..strokeWidth = strokeWidth;
      while (startX < size.width) {
        canvas.drawLine(
            Offset(startX, 0), Offset(startX + dashWidth, 0), paint);
        startX += dashWidth + dashSpace;
      }
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

import 'package:flutter/material.dart';

class CustomCurvePainter extends CustomPainter {
  final bool isRailOpen;

  CustomCurvePainter(this.isRailOpen);

  @override
  void paint(Canvas canvas, Size size) {
    final fillPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    final borderPaint = Paint()
      ..color = isRailOpen ? Colors.transparent : Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.0;

    final path = Path()
      ..moveTo(4.60888, 71.1935)
      ..cubicTo(4.60888, 98.511, 42.9999, 90.2084, 42.9999, 139.287)
      ..lineTo(43, 0.711867)
      ..cubicTo(43, 53.255, 4.60888, 43.8759, 4.60888, 71.1935)
      ..close();

    final innerPath = Path()
      ..moveTo(42.4999, 126.576)
      ..cubicTo(41.4655, 120.532, 39.6867, 115.633, 37.4395, 111.543)
      ..cubicTo(33.7934, 104.907, 28.9345, 100.441, 24.1116, 96.6853)
      ..cubicTo(22.6894, 95.5778, 21.2782, 94.5372, 19.9041, 93.5238)
      ..cubicTo(16.59, 91.0798, 13.4913, 88.7947, 10.9718, 86.1136)
      ..cubicTo(7.44831, 82.364, 5.10888, 77.8797, 5.10888, 71.1935)
      ..cubicTo(5.10888, 64.5084, 7.44729, 60.0922, 10.9697, 56.3896)
      ..cubicTo(12.7409, 54.5279, 14.8145, 52.844, 17.0584, 51.1402)
      ..cubicTo(17.8407, 50.5463, 18.6461, 49.9482, 19.466, 49.3394)
      ..cubicTo(20.9856, 48.211, 22.5545, 47.046, 24.1158, 45.8035)
      ..cubicTo(28.9432, 41.9619, 33.8011, 37.303, 37.4452, 30.28)
      ..cubicTo(39.6895, 25.9546, 41.4663, 20.7465, 42.5, 14.2998)
      ..lineTo(42.4999, 126.576)
      ..close();

    canvas.drawPath(path, fillPaint);
    canvas.drawPath(innerPath, borderPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
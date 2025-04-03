import 'package:flutter/material.dart';

import 'component/custom_curve_painter.dart';

class DynamicRail extends StatelessWidget {
  final bool isRailOpen;
  final Icon icon;
  final Widget child;
  final double railWidth;
  final GestureTapCallback? onPress;

  const DynamicRail({required this.isRailOpen, required this.icon, required this.child, required this.railWidth ,this.onPress});

  double height(BuildContext context) {
    return MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top;
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedPositioned(
          duration: Duration(milliseconds: 300),
          right: isRailOpen ? 0 : -railWidth,
          top: 0,
          bottom: 0,
          child: Row(
            children: [
              Stack(
                alignment: Alignment.topLeft,
                // Changed from Alignment.center to Alignment.topCenter
                children: [
                  CustomPaint(
                    painter: CustomCurvePainter(isRailOpen),
                    child: Container(
                      width: 42,
                      height: height(context) * 0.73,
                    ),
                  ),
                  Positioned(
                    right: 7,
                    top: height(context) * 0.07,
                    child: GestureDetector(
                      onTap: onPress,
                      child: icon,
                    ),
                  ),
                ],
              ),
              const VerticalDivider(thickness: 1, width: 1),
              SafeArea(child: child)
            ],
          ),
        ),
      ],
    );
  }
}


import 'package:flutter/material.dart';
import 'dart:math';

class CustomTimerPainter extends CustomPainter{
  CustomTimerPainter({this.animation, this.color, this.backgroundColor}): super(repaint: animation);
  final Color backgroundColor, color;
  final Animation<double> animation;

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint=Paint()
        ..color = backgroundColor
        ..strokeWidth =10.0
        ..strokeCap =StrokeCap.butt
        ..style = PaintingStyle.stroke;
    canvas.drawCircle(size.center(Offset.zero), size.width/2.0, paint);

    paint.color = color;
    double progress = (1.0 - animation.value) * 2 * pi;
    canvas.drawArc(Offset.zero & size, pi*1.5, -progress, false, paint);

  }

  @override
  bool shouldRepaint(CustomTimerPainter old) {
    return animation.value != old.animation.value ||
        color != old.color ||
        backgroundColor != old.backgroundColor;
  }
}

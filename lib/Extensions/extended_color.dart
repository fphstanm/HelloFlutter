import 'dart:math' as math;
import 'package:flutter/material.dart';

extension ExtendedColor on Color {
  Color get random => Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
}
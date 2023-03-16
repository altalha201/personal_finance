import 'package:flutter/material.dart';

class Spacing {
  static Widget verticalSpacing(double point) => SizedBox(height: point,);

  static Widget horizontalSpacing(double point) => SizedBox(width: point,);
}
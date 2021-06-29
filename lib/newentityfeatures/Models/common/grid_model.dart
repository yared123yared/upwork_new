import 'dart:ui';

import 'package:flutter/material.dart';

class CustomGridClass {
  final IconData icon;
  final String title;
  final int count;
  final Color color;
  final VoidCallback tapAction;

  CustomGridClass({
    @required this.icon,
    @required this.title,
    this.count,
    this.color,
    this.tapAction,
  });
}

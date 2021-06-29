import 'package:flutter/material.dart';

import '../../data/data.dart';

class InAppTitle extends StatelessWidget {
  final String title;
  final String subtitle;

  final bool center;

  InAppTitle({
    this.title,
    this.subtitle,
    this.center = false,
  }) : assert(title != null);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title, style: inAppTitle),
      subtitle: subtitle == null ? null : Text(subtitle, style: inAppSubTitle),
    );
  }
}

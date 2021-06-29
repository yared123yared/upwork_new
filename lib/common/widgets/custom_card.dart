import 'package:flutter/material.dart';

import '../presentation.dart';

//todo add animation to the card items
class CustomCard extends StatelessWidget {
  final String title;
  final List<Widget> children;
  final CrossAxisAlignment crossAxisAlignment;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;

  const CustomCard({
    Key key,
    this.title,
    this.margin = const EdgeInsets.symmetric(vertical: 10, horizontal: 7),
    this.padding = const EdgeInsets.all(15),
    this.children,
    this.crossAxisAlignment = CrossAxisAlignment.center,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: margin,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 3,
      child: Padding(
        padding: padding,
        child: Column(
          crossAxisAlignment: crossAxisAlignment,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (title != null)
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: InAppTitle(title: title),
              ),
            ...children,
          ],
        ),
      ),
    );
  }
}

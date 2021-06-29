import 'package:complex/utils/resource/colors.dart';
import 'package:complex/utils/styles.dart';
import 'package:flutter/material.dart';

class GroupTitle extends StatelessWidget {
  GroupTitle(
      {@required this.text,
      this.widget,
      this.padding = const EdgeInsets.only(left: 20)});

  final String text;
  final Widget widget;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: double.infinity,
      color: ColorConstants.groupGreyColor,
      padding: padding,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          text,
          textAlign: TextAlign.left,
          style: Styles.semiBoldText(size: 16),
        ),
        widget == null ? Container() : widget
      ]),
    );
  }
}

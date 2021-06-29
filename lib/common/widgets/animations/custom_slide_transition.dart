import 'dart:async';

import 'package:flutter/material.dart';

class CustomSlidetransition extends StatefulWidget {
  final Widget child;
  final double dx, dy;
  final int duration;
  CustomSlidetransition(
      {@required this.child, this.dx = 2, this.dy = 0, this.duration = 400})
      : assert(child != null);
  @override
  _CustomSlidetransitionState createState() => _CustomSlidetransitionState();
}

class _CustomSlidetransitionState extends State<CustomSlidetransition>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: widget.duration));
    Timer(Duration(milliseconds: 200), () {
      _animationController.forward();
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
        position:
            Tween<Offset>(begin: Offset(widget.dx, widget.dy), end: Offset.zero)
                .animate(_animationController),
        child: widget.child);
  }
}

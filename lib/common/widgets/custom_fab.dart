import 'dart:ui' as ui;

import 'package:flutter/material.dart';

import '../../data/data.dart';

class CustomFab extends StatefulWidget {
  final Widget body;
  final List<CustomFabMenuItem> items;
  final double blur;
  CustomFab({
    @required this.body,
    @required this.items,
    this.blur: 5.0,
  }) {
    assert(this.items.length > 0);
  }

  @override
  _CustomFabState createState() => _CustomFabState();
}

class _CustomFabState extends State<CustomFab> with TickerProviderStateMixin {
  bool _isOpen = false;
  Duration _duration = Duration(milliseconds: 500);
  AnimationController _iconAnimationCtrl;
  Animation<double> _iconAnimationTween;

  @override
  void initState() {
    super.initState();
    _iconAnimationCtrl = AnimationController(
      vsync: this,
      duration: _duration,
    );
    _iconAnimationTween = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(_iconAnimationCtrl);
  }

  @override
  void dispose() {
    _iconAnimationCtrl.dispose();
    super.dispose();
  }

  void _toggleOpen() {
    setState(() {
      _isOpen = !_isOpen;
    });
    if (_isOpen) {
      _iconAnimationCtrl.forward();
    } else {
      _iconAnimationCtrl.reverse();
    }
  }

  Future<bool> _preventPopIfOpen() async {
    if (_isOpen) {
      _toggleOpen();
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Stack(
        children: <Widget>[
          widget.body,
          _isOpen ? _buildBlurWidget() : Container(),
          _isOpen ? _buildMenuItemList() : Container(),
          _buildMenuButton(context),
        ],
      ),
      onWillPop: _preventPopIfOpen,
    );
  }

  Widget _buildMenuItemList() {
    return Positioned(
      bottom: height * 12,
      right: width * 5,
      child: ScaleTransition(
        scale: AnimationController(
          vsync: this,
          value: 0.7,
          duration: _duration,
        )..forward(),
        child: SizeTransition(
          axis: Axis.horizontal,
          sizeFactor: AnimationController(
            vsync: this,
            value: 0.5,
            duration: _duration,
          )..forward(),
          child: FadeTransition(
            opacity: AnimationController(
              vsync: this,
              value: 0.0,
              duration: _duration,
            )..forward(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: this
                  .widget
                  .items
                  .map<Widget>((item) => _buildMenuItem(item))
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildMenuItem(CustomFabMenuItem item) {
    var onTap = () {
      _toggleOpen();
      item.onTap();
    };
    return Padding(
      padding: EdgeInsets.symmetric(vertical: height),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(horizontal: width),
              padding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 3,
              ),
              decoration: BoxDecoration(
                color: C.multiColor_1,
                borderRadius: BorderRadius.circular(width * 2),
              ),
              child: Text(
                item.label,
                style: TextStyle(
                    fontFamily: 'Merriweather',
                    fontSize: width * 5,
                    color: C.white),
              ),
            ),
            FloatingActionButton(
              onPressed: onTap,
              backgroundColor: item.color,
              child: item.icon,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBlurWidget() {
    return InkWell(
      onTap: _toggleOpen,
      child: BackdropFilter(
        filter: ui.ImageFilter.blur(
          sigmaX: this.widget.blur,
          sigmaY: this.widget.blur,
        ),
        child: Container(
          color: Colors.black12,
        ),
      ),
    );
  }

  Widget _buildMenuButton(BuildContext context) {
    return Positioned(
      bottom: width * 5,
      right: width * 5,
      child: FloatingActionButton(
        child: AnimatedBuilder(
          animation: _iconAnimationTween,
          builder: (BuildContext context, Widget child) {
            return Icon(
              _isOpen ? Icons.close : Icons.add,
              size: _isOpen ? width * 6 : width * 8,
            );
          },
        ),
        backgroundColor: _isOpen ? C.red : C.primaryBlue,
        onPressed: _toggleOpen,
      ),
    );
  }
}

class CustomFabMenuItem {
  String label;
  Icon icon;
  Function onTap;
  Color color;
  CustomFabMenuItem({
    @required this.label,
    @required this.color,
    @required this.onTap,
    @required this.icon,
  });
}

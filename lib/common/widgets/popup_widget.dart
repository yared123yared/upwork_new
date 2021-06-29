import 'package:flutter/material.dart';

class PopupWidget extends StatefulWidget {
  final Widget child;
  final Widget Function(Offset globalPosition, Size size) popupBuilder;
  PopupWidget({Key key, @required this.child, @required this.popupBuilder})
      : assert(child.key == null
            ? throw "Popup widget child has no global or local key"
            : true),
        super(key: key);

  @override
  _PopupWidgetState createState() => _PopupWidgetState();
}

class _PopupWidgetState extends State<PopupWidget> {
  final LayerLink _layerLink = LayerLink();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: CompositedTransformTarget(link: _layerLink, child: widget.child),
      onTap: () => _onWidgetTap(context),
    );
  }

  _onWidgetTap(BuildContext context) {
    final RenderBox renderBox =
        (widget.child.key as GlobalKey).currentContext.findRenderObject();
    final size = renderBox.size;
    final position = renderBox.localToGlobal(Offset.zero);
    if (widget.popupBuilder != null) {
      Widget child = widget.popupBuilder(position, size);
      Navigator.push(
        context,
        PopupWidgetModal(
          child: Container(
            child: CompositedTransformFollower(
              link: _layerLink,
              child: child,
            ),
          ),
        ),
      );
    }
  }
}

class PopupWidgetModal extends ModalRoute<void> {
  final Widget child;
  PopupWidgetModal({
    @required this.child,
  });

  @override
  Duration get transitionDuration => Duration(milliseconds: 30);
  @override
  bool get opaque => false;
  @override
  bool get barrierDismissible => true;
  @override
  Color get barrierColor => Colors.white.withOpacity(0);
  @override
  String get barrierLabel => null;
  @override
  bool get maintainState => true;

  @override
  Widget buildPage(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
  ) {
    // This makes sure that text and other content follows the material style
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      onPanStart: (x) {
        Navigator.pop(context);
      },
      child: Material(
        type: MaterialType.transparency,
        child: GestureDetector(
          onTap: () {},
          child: Stack(children: <Widget>[
            child,
          ]),
        ),
      ),
    );
  }

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    // You can add your own animations for the overlay content
    return FadeTransition(
      opacity: animation,
      child: child,
    );
  }
}

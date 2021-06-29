import 'package:flutter/cupertino.dart';

class NextPageRoute extends CupertinoPageRoute {
  Widget _whichScreen;

  NextPageRoute(this._whichScreen)
      : super(
          builder: (BuildContext context) => _whichScreen,
          maintainState: true,
        );

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return new FadeTransition(opacity: animation, child: _whichScreen);
  }
}

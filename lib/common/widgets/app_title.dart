import 'package:complex/utils/resource/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppTitle extends StatelessWidget {
  AppTitle(this.title, {@required this.context, this.withBackArrow = false});

  final String title;
  final bool withBackArrow;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).padding.top + 100,
      padding: EdgeInsets.only(top: 40),
      width: double.infinity,
      decoration: BoxDecoration(
          color: ColorConstants.greenColor,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20))),
      child: Stack(
        children: [
          _renderBackArrow(),
          Center(
            child: Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }

  Widget _renderBackArrow() {
    return withBackArrow
        ? Align(
            alignment: Alignment.centerLeft,
            child: InkWell(
              child: Container(
                  margin: EdgeInsets.only(left: 20),
                  height: 40,
                  width: 40,
                  child: Image.asset(
                    './assets/right-arrow.png',
                    color: Colors.white,
                    height: 17,
                    width: 16,
                  )),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          )
        : Container();
  }
}

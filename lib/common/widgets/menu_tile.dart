import 'package:flutter/material.dart';

import '../../data/data.dart';

class MenuTile extends StatelessWidget {
  final VoidCallback action;
  final String title;
  final String subtitle;

  MenuTile({this.action, this.title, this.subtitle})
      : assert(title != null),
        assert(subtitle != null);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Padding(
        padding: EdgeInsets.only(top: height * 0.5),
        child: Container(
          height: height * 10,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                    fontFamily: 'Merriweather',
                    color: C.secondaryTextBlue,
                    fontSize: width * 6,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                subtitle,
                maxLines: 2,
                style: tileSubTitle,
              ),
              Divider(
                color: black_1,
              ),
            ],
          ),
        ),
      ),
      onPressed: action,
    );
  }
}

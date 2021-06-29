import 'package:flutter/material.dart';

import '../../data/data.dart';

class EntitySetupTile extends StatelessWidget {
  final String title;
  final String details;
  final VoidCallback action;

  EntitySetupTile({@required this.title, @required this.details, this.action});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: action,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: width * 2, vertical: height * 3),
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(width * 4)),
          elevation: width * 2,
          child: Container(
            margin: EdgeInsets.all(width * 4),
            width: width * 40,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(
                      fontFamily: 'Merriweather',
                      fontSize: width * 6,
                      fontWeight: FontWeight.w700,
                      color: C.secondaryTextBlue),
                ),
                SizedBox(height: height),
                Flexible(
                  child: Text(
                    details,
                    overflow: TextOverflow.fade,
                    style: TextStyle(
                        fontFamily: 'Merriweather',
                        fontSize: width * 4,
                        color: C.grey),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

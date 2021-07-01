import 'package:complex/utils/resource/colors.dart';
import 'package:flutter/material.dart';

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
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 5,
          child: Container(
            margin: EdgeInsets.all(10),
            width: 60,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(
                      fontFamily: 'Merriweather',
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: ColorConstants.secondaryTextBlue),
                ),
                SizedBox(height: 10),
                Flexible(
                  child: Text(
                    details,
                    overflow: TextOverflow.fade,
                    style: TextStyle(
                        fontFamily: 'Merriweather',
                        fontSize: 14,
                        color: Colors.grey),
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

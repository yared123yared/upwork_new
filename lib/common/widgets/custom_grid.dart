

import 'package:flutter/material.dart';

import '../../data/data.dart';
import '../models.dart';

class CustomGridPanel extends StatelessWidget {
  final String title;
  final List<CustomGridClass> customGridList;
  CustomGridPanel({@required this.customGridList, @required this.title});

  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: height),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 4),
          child: Text(
            title,
            style: TextStyle(fontFamily: 'Merriweather', color: Theme.of(context).primaryColor, fontSize: width * 4, fontWeight: FontWeight.bold),
          ),
        ),
        GridView.count(
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(vertical: height, horizontal: width * 4),
          childAspectRatio: 1.5,
          crossAxisSpacing: width * 2,
          mainAxisSpacing: width * 2,
          shrinkWrap: true,
          crossAxisCount: 3,
          children: customGridList.map((gridClass) {
            if(gridClass==null)
              {
                print("found null");
              }
            return GestureDetector(
              onTap: gridClass.tapAction,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      gridClass.icon,
                      color: C.white,
                      size: width * 7,
                    ),
                    Flexible(
                      child: Text(
                        gridClass.title,
                        overflow: TextOverflow.fade,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: 'Merriweather', color: C.white, fontSize: width * 4, fontWeight: FontWeight.w300),
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(width * 2),
                  color: Colors.grey,
                ),
              ),
            );
          }).toList(),
        ),
        Divider(
          thickness: 1.5,
        ),
      ],
    );
  }
}

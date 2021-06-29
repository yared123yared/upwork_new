import 'package:flutter/material.dart';

import '../../data/data.dart';
import '../models.dart';

class CustomHorizontalSlider extends StatelessWidget {
  final String title;
  final List<CustomGridClass> serviceRequests;

  CustomHorizontalSlider({
    @required this.serviceRequests,
    @required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(vertical: height, horizontal: width * 2),
          child: Text(
            title,
            style: TextStyle(
                fontFamily: 'Merriweather',
                color: C.primaryGradientBlue.withOpacity(0.7),
                fontSize: width * 4,
                fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          height: width * 20,
          child: ListView.builder(
              padding: EdgeInsets.all(5),
              shrinkWrap: true,
              itemCount: serviceRequests.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: serviceRequests[index].tapAction,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: width),
                    width: width * 20,
                    decoration: BoxDecoration(
                        color: serviceRequests[index].color,
                        borderRadius: BorderRadius.circular(width)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          serviceRequests[index].icon,
                          color: C.white,
                          size: width * 6,
                        ),
                        Flexible(
                          child: Text(
                            serviceRequests[index].title,
                            overflow: TextOverflow.fade,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Merriweather',
                                color: C.white,
                                fontWeight: FontWeight.w600,
                                fontSize: width * 3.2),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: height),
          child: Divider(
            thickness: 1.5,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import '../../data/data.dart';
import '../models.dart';

class HorizontalTimeline extends StatelessWidget {
  final List<TimeLineModel> timeline;
//  final int currentIndex;

  HorizontalTimeline({@required this.timeline}) : assert(timeline != null);
//  ,assert(currentIndex != null);

  final double _circleRadius = width * 12;
  final Color _selectedColor = Colors.blue;
  final Color _notSelectedColor = Colors.black12;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: _circleRadius,
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: timeline.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                width: _circleRadius,
                height: _circleRadius,
                alignment: Alignment.center,
                child: Text(
                  '${index + 1}',
                  style: TextStyle(
                    fontFamily: 'Merriweather',
                    fontSize: width * 6,
                    color: timeline[index].isChecked
                        ? _selectedColor
                        : _notSelectedColor,
                  ),
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                      color: timeline[index].isChecked
                          ? _selectedColor
                          : _notSelectedColor,
                      width: width / 2),
                  shape: BoxShape.circle,
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return Center(
                child: Container(
                  color: timeline[index + 1].isChecked
                      ? _selectedColor.withOpacity(0.5)
                      : _notSelectedColor,
                  height: height,
                  width: (width * 90 -
                                  _circleRadius -
                                  (_circleRadius * timeline.length)) /
                              (timeline.length - 1) <
                          width * 30
                      ? (width * 90 -
                              _circleRadius -
                              (_circleRadius * timeline.length)) /
                          (timeline.length - 1)
                      : width * 30,
                ),
              );
            },
          ),
        ),
        SizedBox(height: width),
        Container(
          height: _circleRadius,
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: timeline.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                width: _circleRadius,
                alignment: Alignment.topCenter,
                child: Text(
                  timeline[index].text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Merriweather',
                    fontSize: width * 2.5,
                    color: timeline[index].isChecked
                        ? _selectedColor
                        : _notSelectedColor,
                  ),
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return Center(
                child: Container(
                  width: (width * 90 -
                                  _circleRadius -
                                  (_circleRadius * timeline.length)) /
                              (timeline.length - 1) <
                          width * 30
                      ? (width * 90 -
                              _circleRadius -
                              (_circleRadius * timeline.length)) /
                          (timeline.length - 1)
                      : width * 30,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

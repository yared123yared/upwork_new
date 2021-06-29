import 'package:flutter/material.dart';

import '../../../common/widgets/custom_action_button.dart';
import '../../../data/styles_colors.dart';

typedef void CustomAction();

class EndUserTripCutItem extends StatelessWidget {
  final CustomAction viewTimeSchedule;
  final CustomAction busPosition;
  final String tripCutName;

  const EndUserTripCutItem(
      {@required this.viewTimeSchedule,
      @required this.busPosition,
      @required this.tripCutName});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Text(tripCutName,
                style: tileSubTitle.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.black)),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomActionButton(
                  isOutline: true,
                  title: 'Time Schedule',
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                  margin: EdgeInsets.zero,
                  onTap: viewTimeSchedule,
                ),
                CustomActionButton(
                  isOutline: true,
                  title: 'Bus Position',
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                  margin: EdgeInsets.zero,
                  onTap: busPosition,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

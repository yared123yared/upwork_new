import 'package:complex/common/widgets/custom_action_button.dart';
import 'package:flutter/material.dart';

import '../../../data/styles_colors.dart';



typedef void CustomAction();

class TripItem extends StatelessWidget {
  final String tripName;
  final CustomAction cancelAction;
  final CustomAction startAction;
  final CustomAction endAction;
  final CustomAction ticketAction;
  final bool hasStarted;
  const TripItem(
      {@required this.tripName,
      this.hasStarted = false,
      @required this.cancelAction,
      @required this.startAction,
      @required this.endAction,
      @required this.ticketAction});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Text(tripName,
                style: tileSubTitle.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.black)),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                if (hasStarted)
                  CustomActionButton(
                    isOutline: true,
                    title: 'Start',
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                    margin: EdgeInsets.zero,
                    onTap: startAction,
                  ),
                CustomActionButton(
                  isOutline: true,
                  title: 'End',
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                  margin: EdgeInsets.zero,
                  onTap: endAction,
                ),
                CustomActionButton(
                  isOutline: true,
                  title: 'Cancel',
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                  margin: EdgeInsets.zero,
                  onTap: cancelAction,
                ),
                CustomActionButton(
                  isOutline: true,
                  title: 'Tickect',
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                  margin: EdgeInsets.zero,
                  onTap: ticketAction,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

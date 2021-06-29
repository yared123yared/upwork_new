import 'package:flutter/material.dart';

import '../../../data/styles_colors.dart';

class RelationItem extends StatelessWidget {
  final void Function() viewTripsAction;
  final void Function() checkInAction;
  final String relationName;
  const RelationItem(
      {this.relationName, this.viewTripsAction, this.checkInAction});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(relationName,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: tileSubTitle.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.black)),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                    onTap: viewTripsAction,
                    child: Text('View Trips', style: inAppSubTitle)),
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                    onTap: checkInAction,
                    child: Text('Check In', style: inAppSubTitle))
              ],
            )
          ],
        ),
      ),
    );
  }
}

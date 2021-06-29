import 'package:flutter/material.dart';

import '../../../common/widgets/custom_action_button.dart';
import '../../../data/styles_colors.dart';

typedef void CustomAction();

class EndUserTripItem extends StatelessWidget {
  final CustomAction bookTrip;
  final String tripName;

  const EndUserTripItem({@required this.bookTrip, @required this.tripName});
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
            CustomActionButton(
              isOutline: true,
              isExpanded: true,
              title: 'Book Trip',
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
              margin: EdgeInsets.symmetric(
                horizontal: 60,
              ),
              onTap: bookTrip,
            ),
          ],
        ),
      ),
    );
  }
}

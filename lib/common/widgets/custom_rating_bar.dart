import 'package:flutter/material.dart';

///until now it read only bar
class CustomRatingBar extends StatelessWidget {
  final double rate;

  //the size of the items in the bar
  final double itemSize;

  const CustomRatingBar({
    Key key,
    @required this.rate,
    this.itemSize = 13,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (var i = 1; i <= rate; i++)
          Icon(
            Icons.star,
            size: itemSize,
            color: Colors.yellow[600],
          ),
        for (var i = rate + 1; i <= 5; i++)
          Icon(
            Icons.star,
            size: itemSize,
            color: Colors.grey[300],
          ),
      ],
    );
  }
}

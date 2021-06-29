import 'package:complex/newentityfeatures/ecommerce/models/ExplorePageRelatedModels.dart';
import 'package:flutter/material.dart';

class AssignOrderTile extends StatelessWidget {
  final bool assigned;
  final Function(bool) onAssign;
  final orderinfomodel order;

  const AssignOrderTile({
    Key key,
    this.order,
    this.assigned: false,
    this.onAssign,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 16,
      ),
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0x33000000),
            blurRadius: 8,
            offset: Offset(0, 2),
          ),
        ],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'NAME',
                  style: TextStyle(
                    color: Color(0xFFB8B5B5),
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  order.custname,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  order.totalcalculatedprice.toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'ADDRESS',
                  style: TextStyle(
                    color: Color(0xFFB8B5B5),
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  order.custaddress?.addressinfo ??
                      'This is a Temporary Adress',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'ASSIGN',
                style: TextStyle(
                  color: Color(0xFFB8B5B5),
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Checkbox(
                value: assigned,
                onChanged: onAssign,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

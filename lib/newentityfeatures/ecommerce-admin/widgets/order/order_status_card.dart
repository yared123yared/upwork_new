import 'package:flutter/material.dart';

class OrderStatusCard extends StatelessWidget {
  final String label, image;
  final int count;
  final bool hasNew;
  const OrderStatusCard({
    Key key,
    this.label,
    this.image,
    this.count,
    this.hasNew: false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color(0x22000000),
                  blurRadius: 8,
                ),
              ],
              borderRadius: BorderRadius.circular(12),
            ),
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.all(12),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    children: [
                      ImageIcon(
                        AssetImage(
                          image,
                        ),
                        size: 40,
                      ),
                      SizedBox(width: 4),
                      Expanded(
                        child: count == null
                            ? Container()
                            : FittedBox(
                                child: Text(
                                  '$count',
                                  style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: FittedBox(
                    child: Text(
                      label,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          if (hasNew)
            Positioned(
              top: 0,
              right: 24,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFFFDC51),
                  shape: BoxShape.circle,
                ),
                width: 32,
                height: 32,
                child: Center(
                  child: Text(
                    'new',
                    style: TextStyle(
                      color: Color(0xFF4B4B4B),
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class OrderStatusButton extends StatelessWidget {
  final String label, image;
  final VoidCallback clickEvent;
  const OrderStatusButton({
    Key key,
    this.label,
    this.image,
    this.clickEvent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: clickEvent,
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
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
                child: Center(
                  child: ImageIcon(
                    AssetImage(
                      image,
                    ),
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: FittedBox(
                  child: Text(
                    label,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class EcommerceErrorWidget extends StatelessWidget {
  final String errorText;
  const EcommerceErrorWidget({
    Key key,
    @required this.errorText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.error_outline_rounded,
            color: Colors.red[200],
            size: 52,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              errorText,
              style: TextStyle(
                color: Colors.red[400],
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

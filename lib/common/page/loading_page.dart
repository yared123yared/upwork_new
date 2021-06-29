import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: SpinKitPouringHourglass(color: Theme.of(context).primaryColor),
        decoration: BoxDecoration(color: Colors.grey.withOpacity(0.2)),
      ),
    );
  }
}

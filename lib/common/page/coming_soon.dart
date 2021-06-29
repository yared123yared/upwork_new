import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/data.dart';

class ComingSoon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        print('pressed back');
        return false;
      },
      child: Scaffold(
        body: Container(
          child: Center(
            child: Text(
              'Coming Soon !!',
              style: TextStyle(
                  fontFamily: 'Merriweather',
                  fontSize: Get.width * 12,
                  fontWeight: FontWeight.w700,
                  color: white.withOpacity(0.7)),
            ),
          ),
          decoration: BoxDecoration(gradient: C.bgGradient),
        ),
      ),
    );
  }
}

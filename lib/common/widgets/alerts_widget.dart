import 'package:complex/common/widgets/tap_widget.dart';
import 'package:complex/utils/resource/colors.dart';
import 'package:complex/utils/styles.dart';
import 'package:flutter/material.dart';

class AlertsWidget {
  static Future alertWithOkBtn({
    @required BuildContext context,
    String text = "",
    Function onOkClick,
  }) async {
    return await showDialog(
      context: context,
      useSafeArea: false,
      barrierColor: Colors.black54,
      builder: (BuildContext _context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          content: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  text ?? "",
                  style: Styles.normalText(size: 18),
                  textAlign: TextAlign.center,
                ),
                _size(height: 30),
                TapWidget(onTap: () {
          Navigator.pop(_context);
          if (onOkClick != null) onOkClick();
          }, child: Text("Okay",style: Styles.semiBoldText(color: ColorConstants.primaryColor),)),
                _size(height: 10),
              ],
            ),
          ),
        );
      },
    );
  }

  static _size({double height = 30}) {
    return SizedBox(
      height: height,
    );
  }
}

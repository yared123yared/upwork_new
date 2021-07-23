import 'package:complex/common/widgets/tap_widget.dart';
import 'package:complex/utils/resource/colors.dart';
import 'package:complex/utils/styles.dart';
import 'package:flutter/material.dart';

import 'custom_text_field.dart';

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
  static Future alertWithEnterUnit({
    @required BuildContext context,
    String text = "",
    Function(String) onOkClick,
  }) async {
    return await showDialog(
      context: context,
      useSafeArea: false,
      barrierColor: Colors.black54,
      builder: (BuildContext _context) {
        CustomTextFieldController _price = CustomTextFieldController();
        String _errorMsg;
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          content: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: StatefulBuilder(
              builder: (context, setState) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      text ?? "",
                      style: Styles.normalText(size: 18),
                      textAlign: TextAlign.center,
                    ),
                    _size(height: 30),
                    CustomTextField(
                      icon: Icons.text_fields_outlined,
                      title: "Unit",
                      controller: _price,
                      keyboardType: TextInputType.number,
                      validate: Validate.withOption(
                        isRequired: true,
                        isInt: true,
                        isNumber: true,
                      ),
                    ),
                    _size(height: 30),
                    TapWidget(
                      onTap: () {
                        Navigator.pop(_context);
                      },
                      child: Text(
                        "Cancel",
                        style: Styles.semiBoldText(
                            color: ColorConstants.primaryColor),
                      ),
                    ),
                    _size(height: 30),
                    TapWidget(
                      onTap: () {
                        if (_price.isValid) {
                          Navigator.pop(_context);
                          if (onOkClick != null) onOkClick(_price.text.trim());
                        } else {
                          setState(() {
                            _errorMsg = "Please enter unit";
                          });
                        }
                      },
                      child: Text(
                        "Okay",
                        style: Styles.semiBoldText(
                            color: ColorConstants.primaryColor),
                      ),
                    ),
                    _size(height: 10),
                    Text(
                      _errorMsg ?? "",
                      style: Styles.semiBoldText(
                          color: ColorConstants.red),
                    ),
                    _size(height: 10),
                  ],
                );
              },
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

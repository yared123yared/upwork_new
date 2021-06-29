import 'package:flutter/material.dart';

import 'custom_action_button.dart';

class CustomAlertDialog extends StatelessWidget {
  final Widget content;
  final String header;

  /// this will auto generated if has no value
  final void Function() onOk;

  /// if has value the cancel button will be showen
  final void Function() onCancel;

  const CustomAlertDialog({
    @required this.header,
    @required this.content,
    this.onCancel,
    this.onOk,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(header),
      content: content,
      actions: [
        CustomActionButton(
          title: 'OK',
          isOutline: true,
          onTap: onOk ?? () => Navigator.of(context).pop(),
        ),
        if (onCancel != null)
          CustomActionButton(
            title: 'Cancel',
            isOutline: true,
            onTap: onCancel,
          )
      ],
    );
  }
}

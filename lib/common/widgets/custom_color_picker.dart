import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:get/get.dart';

import '../presentation.dart';

class CustomColorPicker extends StatefulWidget {
  final CustomTextFieldController controller;
  final Validate validate;
  final String customTitle;
  final Color initialColor;
  final void Function(Color color) onColorSelect;

  const CustomColorPicker({
    Key key,
    @required this.controller,
    this.initialColor = Colors.white,
    this.validate,
    this.customTitle,
    this.onColorSelect,
  }) : super(key: key);

  @override
  _CustomColorPickerState createState() => _CustomColorPickerState();
}

class _CustomColorPickerState extends State<CustomColorPicker> {
  Color current;

  @override
  void initState() {
    current = widget.initialColor;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (current != null)
          Material(
            elevation: 6,
            type: MaterialType.circle,
            color: current,
            child: const SizedBox(
              width: 40,
              height: 40,
            ),
          ),
        const SizedBox(width: 20),
        Expanded(
          child: CustomTextField(
            initialValue: current?.value?.toRadixString(16),
            icon: Icons.color_lens,
            controller: widget.controller,
            validate: widget.validate,
            title: widget.customTitle ?? "Color",
            enabled: false,
            onTap: _showPicker,
          ),
        ),
      ],
    );
  }

  _showPicker() {
    showDialog(
      context: Get.context,
      builder: (context) {
        return AlertDialog(
          title: Text('Select A Color'),
          scrollable: true,
          content: ColorPicker(
            onColorChanged: (value) {
              setState(() {
                current = value;
                widget.controller.text = value.value?.toRadixString(16);
                widget.onColorSelect?.call(value);
              });
            },
            pickerColor: current ?? Colors.white,
          ),
          actions: [
            TextButton(
              child: Text('Confirm'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
    // Get.dialog(useRootNavigator: true);
  }
}
